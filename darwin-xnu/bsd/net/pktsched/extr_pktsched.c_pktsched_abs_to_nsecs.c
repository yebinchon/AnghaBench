
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;


 int absolutetime_to_nanoseconds (int ,int *) ;

u_int64_t
pktsched_abs_to_nsecs(u_int64_t abstime)
{
 u_int64_t nsecs;

 absolutetime_to_nanoseconds(abstime, &nsecs);
 return (nsecs);
}
