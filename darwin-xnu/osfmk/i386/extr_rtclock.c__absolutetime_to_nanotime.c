
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ clock_usec_t ;
typedef int clock_sec_t ;


 scalar_t__ NSEC_PER_SEC ;

__attribute__((used)) static inline void
_absolutetime_to_nanotime(uint64_t abstime, clock_sec_t *secs, clock_usec_t *nanosecs)
{
 *secs = abstime / (uint64_t)NSEC_PER_SEC;
 *nanosecs = (clock_usec_t)(abstime % (uint64_t)NSEC_PER_SEC);
}
