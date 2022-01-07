
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ clock_res_t ;


 int NSEC_PER_SEC ;
 int clock_absolutetime_interval_to_deadline (int,int*) ;
 int nanoseconds_to_absolutetime (scalar_t__,int*) ;

__attribute__((used)) static __inline__ uint64_t
semaphore_deadline(
 unsigned int sec,
 clock_res_t nsec)
{
 uint64_t abstime;

 nanoseconds_to_absolutetime((uint64_t)sec * NSEC_PER_SEC + nsec, &abstime);
 clock_absolutetime_interval_to_deadline(abstime, &abstime);

 return (abstime);
}
