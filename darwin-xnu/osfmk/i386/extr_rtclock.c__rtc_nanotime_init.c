
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int shift; int scale; } ;
typedef TYPE_1__ pal_rtc_nanotime_t ;


 int _pal_rtc_nanotime_store (int ,int ,int ,int ,TYPE_1__*) ;
 int rdtsc64 () ;

__attribute__((used)) static inline void
_rtc_nanotime_init(pal_rtc_nanotime_t *rntp, uint64_t base)
{
 uint64_t tsc = rdtsc64();

 _pal_rtc_nanotime_store(tsc, base, rntp->scale, rntp->shift, rntp);
}
