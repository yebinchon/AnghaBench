
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint64_t ;
struct bintime {int frac; int sec; } ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;



__attribute__((used)) static __inline void
clock2bintime(const clock_sec_t *secs, const clock_usec_t *microsecs, struct bintime *_bt)
{

 _bt->sec = *secs;

 _bt->frac = *microsecs * (uint64_t)18446744073709LL;
}
