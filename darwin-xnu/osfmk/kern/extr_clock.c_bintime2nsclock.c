
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct bintime {int frac; int sec; } ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;


 scalar_t__ NSEC_PER_SEC ;

__attribute__((used)) static __inline void
bintime2nsclock(const struct bintime *_bt, clock_sec_t *secs, clock_usec_t *nanosecs)
{

 *secs = _bt->sec;
 *nanosecs = ((uint64_t)NSEC_PER_SEC * (uint32_t)(_bt->frac >> 32)) >> 32;
}
