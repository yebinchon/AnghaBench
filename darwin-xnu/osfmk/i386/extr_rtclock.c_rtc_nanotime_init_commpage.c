
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;


 int pal_rtc_nanotime_info ;
 int rtc_nanotime_set_commpage (int *) ;
 int splclock () ;
 int splx (int ) ;

void
rtc_nanotime_init_commpage(void)
{
 spl_t s = splclock();

 rtc_nanotime_set_commpage(&pal_rtc_nanotime_info);
 splx(s);
}
