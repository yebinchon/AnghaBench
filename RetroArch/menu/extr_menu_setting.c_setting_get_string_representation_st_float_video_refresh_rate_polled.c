
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int snprintf (char*,size_t,char*,double) ;
 double video_driver_get_refresh_rate () ;

__attribute__((used)) static void
setting_get_string_representation_st_float_video_refresh_rate_polled(
      rarch_setting_t *setting, char *s, size_t len)
{
    snprintf(s, len, "%.3f Hz", video_driver_get_refresh_rate());
}
