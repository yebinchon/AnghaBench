
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int TimestampDifference (int ,int ,long*,int*) ;

__attribute__((used)) static long
MillisecondsBetweenTimestamps(TimestampTz startTime, TimestampTz endTime)
{
 long secs = 0;
 int micros = 0;

 TimestampDifference(startTime, endTime, &secs, &micros);

 return secs * 1000 + micros / 1000;
}
