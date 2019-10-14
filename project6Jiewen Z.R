myDF <- read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_transactions.csv")
split(STORE_R)
class(myresults)
length(myresults)
names(myresults)
#The command of class,  names, and names are used.
dim(myresults["CENTRAL"])
head(myresults["CENTRAL"])
#The dim command offered the dimensions, but the head command is needed to different places.
centralresults <- myDF[myDF$STORE_R == "CENTRAL"]
dim(centralresults)
head(centralresults)
#A new data frame called centralresults is ran.
myproducts<-read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_products.csv ")
#A new file is named myprodects
mybigDF<-merge(mybigDF,myproducts,"PRODUCT_NUM")
View(mybigDF)
#myDF and myproducts are merged together by using PRODUCT NUM and used the viewfunction.
subset(myDF,myDF$PURCHASE_=="23-DEC-17")
#The function subset showed the purchases made on Dec 23rd, 2017
head(subset(myDF$PURCHASE_=="23-DEC-17",select = "SPEND"))
#The amount of dollars purchases is specified under SPEND and shortened using the head.
head(subset(myDF$PURCHASE_=="23-DEC-17",select = c("SPEND","PURCHASE_","STORE_R")))
#"STORE_R" is being added and it produced the stores of the purchase.
newdata<-subset(myDF$PURCHASE_=="23-DEC-17",select = c("SPEND","STORE_R"))
tail(sort(tapply(newdata$SPEND, newdata$STORE_R,sum)),n=1)
#The east store has the largest purchase with $36078.54

