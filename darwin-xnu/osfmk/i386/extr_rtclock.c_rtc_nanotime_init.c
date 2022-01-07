
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int _rtc_nanotime_init (int *,int ) ;
 int pal_rtc_nanotime_info ;
 int rtc_nanotime_set_commpage (int *) ;

void
rtc_nanotime_init(uint64_t base)
{
 _rtc_nanotime_init(&pal_rtc_nanotime_info, base);
 rtc_nanotime_set_commpage(&pal_rtc_nanotime_info);
}
