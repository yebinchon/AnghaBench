
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* scratch2_buf; char* scratch_buf; int detect_content_path; int deferred_path; } ;
typedef TYPE_1__ menu_handle_t ;
struct TYPE_8__ {char const* dir; char const* path; char const* menu_label; int len; int s; int * data; } ;
typedef TYPE_2__ menu_content_ctx_defer_info_t ;
typedef int core_info_list_t ;
struct TYPE_9__ {int * environ_get; int * args; int * argv; int argc; } ;
typedef TYPE_3__ content_ctx_info_t ;


 int ACTION_OK_DL_DEFERRED_CORE_LIST ;
 int CORE_TYPE_PLAIN ;
 int PATH_MAX_LENGTH ;
 int core_info_get_list (int **) ;
 int fill_pathname_join (int ,char const*,char const*,int) ;
 int free (char*) ;
 int generic_action_ok_displaylist_push (char const*,int *,char const*,unsigned int,size_t,size_t,int ) ;
 scalar_t__ malloc (int) ;
 int menu_cbs_exit () ;
 scalar_t__ menu_content_find_first_core (TYPE_2__*,int,char*,int) ;
 TYPE_1__* menu_driver_get_ptr () ;
 size_t menu_navigation_get_selection () ;
 int task_push_load_content_with_new_core_from_menu (char*,int ,TYPE_3__*,int ,int *,int *) ;

__attribute__((used)) static int action_ok_load_archive_detect_core(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_content_ctx_defer_info_t def_info;
   int ret = 0;
   core_info_list_t *list = ((void*)0);
   const char *menu_path = ((void*)0);
   const char *content_path = ((void*)0);
   char *new_core_path = ((void*)0);
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   menu_path = menu->scratch2_buf;
   content_path = menu->scratch_buf;

   core_info_get_list(&list);

   def_info.data = list;
   def_info.dir = menu_path;
   def_info.path = content_path;
   def_info.menu_label = label;
   def_info.s = menu->deferred_path;
   def_info.len = sizeof(menu->deferred_path);

   new_core_path = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   new_core_path[0] = '\0';

   if (menu_content_find_first_core(&def_info, 0,
            new_core_path, PATH_MAX_LENGTH * sizeof(char)))
      ret = -1;

   fill_pathname_join(menu->detect_content_path, menu_path, content_path,
         sizeof(menu->detect_content_path));

   switch (ret)
   {
      case -1:
         {
            content_ctx_info_t content_info;

            content_info.argc = 0;
            content_info.argv = ((void*)0);
            content_info.args = ((void*)0);
            content_info.environ_get = ((void*)0);

            ret = 0;

            if (!task_push_load_content_with_new_core_from_menu(
                     new_core_path, def_info.s,
                     &content_info,
                     CORE_TYPE_PLAIN,
                     ((void*)0), ((void*)0)))
               ret = -1;
         }
         break;
      case 0:
         idx = menu_navigation_get_selection();
         ret = generic_action_ok_displaylist_push(path, ((void*)0),
               label, type,
               idx, entry_idx, ACTION_OK_DL_DEFERRED_CORE_LIST);
         break;
      default:
         break;
   }

   free(new_core_path);
   return ret;
}
