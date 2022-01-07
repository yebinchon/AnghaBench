
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ generation; int shift; int scale; int ns_base; int tsc_base; } ;
typedef TYPE_1__ pm_rtc_nanotime_t ;
struct TYPE_5__ {scalar_t__ generation; int shift; int scale; int ns_base; int tsc_base; } ;


 TYPE_3__ pal_rtc_nanotime_info ;

__attribute__((used)) static void
pmGetNanotimeInfo(pm_rtc_nanotime_t *rtc_nanotime)
{



 do {
  rtc_nanotime->generation = pal_rtc_nanotime_info.generation;
  rtc_nanotime->tsc_base = pal_rtc_nanotime_info.tsc_base;
  rtc_nanotime->ns_base = pal_rtc_nanotime_info.ns_base;
  rtc_nanotime->scale = pal_rtc_nanotime_info.scale;
  rtc_nanotime->shift = pal_rtc_nanotime_info.shift;
 } while(pal_rtc_nanotime_info.generation != 0
  && rtc_nanotime->generation != pal_rtc_nanotime_info.generation);
}
