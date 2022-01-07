
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int absolutetime_to_nanoseconds (int ,int *) ;

__attribute__((used)) static uint64_t
abstime_to_nsecs(uint64_t abstime)
{
 uint64_t nsecs;

 absolutetime_to_nanoseconds(abstime, &nsecs);
 return (nsecs);
}
