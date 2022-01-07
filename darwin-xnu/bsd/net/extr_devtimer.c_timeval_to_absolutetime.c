
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timeval {int tv_usec; int tv_sec; } ;


 int NSEC_PER_SEC ;
 int NSEC_PER_USEC ;
 int clock_interval_to_absolutetime_interval (int ,int ,scalar_t__*) ;

__attribute__((used)) static __inline__ uint64_t
timeval_to_absolutetime(struct timeval tv)
{
    uint64_t secs;
    uint64_t usecs;

    clock_interval_to_absolutetime_interval(tv.tv_sec, NSEC_PER_SEC,
         &secs);
    clock_interval_to_absolutetime_interval(tv.tv_usec, NSEC_PER_USEC,
         &usecs);
    return (secs + usecs);
}
