
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_perf_counter {int dummy; } ;
typedef int file_list_t ;


 unsigned int MENU_SETTINGS_PERF_COUNTERS_BEGIN ;
 int general_disp_set_label_perf_counters (struct retro_perf_counter**,unsigned int,char*,size_t,char*,size_t,char const*,unsigned int*) ;
 struct retro_perf_counter** retro_get_perf_counter_rarch () ;

__attribute__((used)) static void menu_action_setting_disp_set_label_perf_counters(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   struct retro_perf_counter **counters = retro_get_perf_counter_rarch();
   unsigned offset = type - MENU_SETTINGS_PERF_COUNTERS_BEGIN;
   general_disp_set_label_perf_counters(counters, offset, s, len,
         s2, len, path, w);
}
