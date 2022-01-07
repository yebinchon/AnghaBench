
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int GetCurrentTimestamp () ;
 int TimestampDifference (int ,int ,long*,int*) ;

long
DeadlineTimestampTzToTimeout(TimestampTz deadline)
{
 long secs = 0;
 int msecs = 0;
 TimestampDifference(GetCurrentTimestamp(), deadline, &secs, &msecs);
 return secs * 1000 + msecs / 1000;
}
