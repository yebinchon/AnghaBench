
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int detect_content_path; } ;
typedef TYPE_1__ menu_handle_t ;
struct TYPE_6__ {int * environ_get; int * args; int * argv; scalar_t__ argc; } ;
typedef TYPE_2__ content_ctx_info_t ;


 int CORE_TYPE_PLAIN ;
 int content_add_to_playlist (int ) ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;
 int task_push_load_content_with_new_core_from_menu (char const*,int ,TYPE_2__*,int ,int *,int *) ;

__attribute__((used)) static int action_ok_file_load_detect_core(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   content_ctx_info_t content_info;
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   content_info.argc = 0;
   content_info.argv = ((void*)0);
   content_info.args = ((void*)0);
   content_info.environ_get = ((void*)0);

   if (!task_push_load_content_with_new_core_from_menu(
            path, menu->detect_content_path,
            &content_info,
            CORE_TYPE_PLAIN,
            ((void*)0), ((void*)0)))
      return -1;
   content_add_to_playlist(menu->detect_content_path);

   return 0;
}
