
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;


 int nanoseconds_to_absolutetime (int ,int *) ;

u_int64_t
pktsched_nsecs_to_abstime(u_int64_t nsecs)
{
 u_int64_t abstime;

 nanoseconds_to_absolutetime(nsecs, &abstime);
 return (abstime);
}
