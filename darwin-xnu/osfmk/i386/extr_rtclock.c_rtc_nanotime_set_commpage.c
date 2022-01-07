
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shift; int scale; int ns_base; int tsc_base; } ;
typedef TYPE_1__ pal_rtc_nanotime_t ;


 int commpage_set_nanotime (int ,int ,int ,int ) ;

__attribute__((used)) static inline void
rtc_nanotime_set_commpage(pal_rtc_nanotime_t *rntp)
{
 commpage_set_nanotime(rntp->tsc_base, rntp->ns_base, rntp->scale, rntp->shift);
}
