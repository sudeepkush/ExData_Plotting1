
#read Data from Text file to a table
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#head(data)
#str(data)

#Create subset of data for 2 days between 1/2/2007 to 2/2/2007
subsetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

#head(subsetData)
#dim(subsetData)

#converts string values to numeric to create graphs
globalactivepower <- as.numeric(subsetData$Global_active_power)

#creating PNG graphic device
png("plot1.png", width=480, height = 480)

#creating Histogram
hist(globalactivepower,  col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()
