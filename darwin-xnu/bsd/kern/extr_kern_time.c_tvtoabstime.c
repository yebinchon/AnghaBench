
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timeval {int tv_usec; int tv_sec; } ;


 int NSEC_PER_SEC ;
 int NSEC_PER_USEC ;
 int clock_interval_to_absolutetime_interval (int ,int ,scalar_t__*) ;

uint64_t
tvtoabstime(
 struct timeval *tvp)
{
 uint64_t result, usresult;

 clock_interval_to_absolutetime_interval(
      tvp->tv_sec, NSEC_PER_SEC, &result);
 clock_interval_to_absolutetime_interval(
      tvp->tv_usec, NSEC_PER_USEC, &usresult);

 return (result + usresult);
}
