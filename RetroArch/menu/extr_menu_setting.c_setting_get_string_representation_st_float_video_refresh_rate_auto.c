
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int MENU_ANIMATION_CTL_SET_ACTIVE ;
 int MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ;
 int menu_animation_ctl (int ,int *) ;
 int msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,double,double,unsigned int) ;
 int strlcpy (char*,int ,size_t) ;
 scalar_t__ video_monitor_fps_statistics (double*,double*,unsigned int*) ;

__attribute__((used)) static void
setting_get_string_representation_st_float_video_refresh_rate_auto(
      rarch_setting_t *setting, char *s, size_t len)
{
   double video_refresh_rate = 0.0;
   double deviation = 0.0;
   unsigned sample_points = 0;
   if (!setting)
      return;

   if (video_monitor_fps_statistics(&video_refresh_rate,
            &deviation, &sample_points))
   {
      snprintf(s, len, "%.3f Hz (%.1f%% dev, %u samples)",
            video_refresh_rate, 100.0 * deviation, sample_points);
      menu_animation_ctl(MENU_ANIMATION_CTL_SET_ACTIVE, ((void*)0));
   }
   else
      strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE), len);
}
