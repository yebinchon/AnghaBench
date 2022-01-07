
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_START (int *,int ) ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_END ;
 int action_start_audio_mixer_stream_volume ;
 int action_start_lookup_setting ;
 scalar_t__ menu_cbs_init_bind_start_compare_label (int *) ;
 scalar_t__ menu_cbs_init_bind_start_compare_type (int *,unsigned int) ;

int menu_cbs_init_bind_start(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;
   BIND_ACTION_START(cbs, action_start_lookup_setting);

   if (menu_cbs_init_bind_start_compare_label(cbs) == 0)
      return 0;

   if (menu_cbs_init_bind_start_compare_type(cbs, type) == 0)
      return 0;

   return -1;
}
