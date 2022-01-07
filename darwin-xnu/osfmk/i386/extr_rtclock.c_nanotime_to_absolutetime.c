
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;


 int NSEC_PER_SEC ;

void
nanotime_to_absolutetime(
 clock_sec_t secs,
 clock_nsec_t nanosecs,
 uint64_t *result)
{
 *result = ((uint64_t)secs * NSEC_PER_SEC) + nanosecs;
}
