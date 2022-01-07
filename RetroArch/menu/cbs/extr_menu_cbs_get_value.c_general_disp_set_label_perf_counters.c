
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_perf_counter {int dummy; } ;


 int MENU_ANIMATION_CTL_SET_ACTIVE ;
 int menu_action_setting_disp_set_label_perf_counters_common (struct retro_perf_counter**,unsigned int,char*,size_t) ;
 int menu_animation_ctl (int ,int *) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void general_disp_set_label_perf_counters(
      struct retro_perf_counter **counters,
      unsigned offset,
      char *s, size_t len,
      char *s2, size_t len2,
      const char *path, unsigned *w
      )
{
   *s = '\0';
   *w = 19;
   strlcpy(s2, path, len2);

   menu_action_setting_disp_set_label_perf_counters_common(
         counters, offset, s, len);
   menu_animation_ctl(MENU_ANIMATION_CTL_SET_ACTIVE, ((void*)0));
}
