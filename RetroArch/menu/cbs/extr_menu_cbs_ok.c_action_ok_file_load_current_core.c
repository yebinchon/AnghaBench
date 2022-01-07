
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int detect_content_path; } ;
typedef TYPE_1__ menu_handle_t ;


 int CORE_TYPE_PLAIN ;
 int default_action_ok_load_content_with_core_from_menu (int ,int ) ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;

__attribute__((used)) static int action_ok_file_load_current_core(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   return default_action_ok_load_content_with_core_from_menu(
         menu->detect_content_path, CORE_TYPE_PLAIN);
}
