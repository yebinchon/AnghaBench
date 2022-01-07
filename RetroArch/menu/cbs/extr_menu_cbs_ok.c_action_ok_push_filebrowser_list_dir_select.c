
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filebrowser_label; } ;
typedef TYPE_1__ menu_handle_t ;


 int ACTION_OK_DL_FILE_BROWSER_SELECT_DIR ;
 int FILEBROWSER_SELECT_DIR ;
 int filebrowser_set_type (int ) ;
 int generic_action_ok_displaylist_push (char const*,int *,char const*,unsigned int,size_t,size_t,int ) ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;
 int strlcpy (int ,char const*,int) ;

int action_ok_push_filebrowser_list_dir_select(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   filebrowser_set_type(FILEBROWSER_SELECT_DIR);
   strlcpy(menu->filebrowser_label, label, sizeof(menu->filebrowser_label));
   return generic_action_ok_displaylist_push(path, ((void*)0), label, type, idx,
         entry_idx, ACTION_OK_DL_FILE_BROWSER_SELECT_DIR);
}
