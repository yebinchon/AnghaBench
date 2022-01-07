
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scratch_buf; int scratch2_buf; } ;
typedef TYPE_1__ menu_handle_t ;
typedef int combined_path ;


 int CORE_TYPE_FFMPEG ;
 int CORE_TYPE_MPV ;
 int PATH_MAX_LENGTH ;
 int default_action_ok_load_content_with_core_from_menu (char*,int ) ;
 int fill_pathname_join (char*,int ,int ,int) ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;

__attribute__((used)) static int action_ok_audio_run(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char combined_path[PATH_MAX_LENGTH];
   menu_handle_t *menu = menu_driver_get_ptr();

   combined_path[0] = '\0';

   if (!menu)
      return menu_cbs_exit();

   fill_pathname_join(combined_path, menu->scratch2_buf,
         menu->scratch_buf, sizeof(combined_path));





   return default_action_ok_load_content_with_core_from_menu(combined_path, CORE_TYPE_FFMPEG);

}
