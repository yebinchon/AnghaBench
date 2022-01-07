
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double log (int) ;
 double pow (double,int) ;
 scalar_t__ rint (double) ;

__attribute__((used)) static int
CountDistinctStorageSize(double approximationErrorRate)
{
 double desiredStorageSize = pow((1.04 / approximationErrorRate), 2);
 double logOfDesiredStorageSize = log(desiredStorageSize) / log(2);


 int logOfStorageSize = (int) rint(logOfDesiredStorageSize);
 if (logOfStorageSize < 4)
 {
  logOfStorageSize = 4;
 }
 else if (logOfStorageSize > 17)
 {
  logOfStorageSize = 17;
 }

 return logOfStorageSize;
}
