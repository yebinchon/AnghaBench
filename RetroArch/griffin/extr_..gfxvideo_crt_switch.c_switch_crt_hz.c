
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ra_core_hz ;
 int ra_set_core_hz ;
 int ra_tmp_core_hz ;
 int video_monitor_set_refresh_rate (int) ;

__attribute__((used)) static void switch_crt_hz(void)
{
   if (ra_core_hz == ra_tmp_core_hz)
      return;

   if (ra_core_hz < 100)
   {
      if (ra_core_hz < 53)
         ra_set_core_hz = 50;
      if (ra_core_hz >= 53 && ra_core_hz < 57)
         ra_set_core_hz = 55;
      if (ra_core_hz >= 57)
         ra_set_core_hz = 60;
   }

   if (ra_core_hz > 100)
   {
      if (ra_core_hz < 106)
         ra_set_core_hz = 120;
      if (ra_core_hz >= 106 && ra_core_hz < 114)
         ra_set_core_hz = 110;
      if (ra_core_hz >= 114)
         ra_set_core_hz = 120;
   }

   video_monitor_set_refresh_rate(ra_set_core_hz);

   ra_tmp_core_hz = ra_core_hz;
}
