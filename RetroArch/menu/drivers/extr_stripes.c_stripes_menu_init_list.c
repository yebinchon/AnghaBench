
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int need_push; int * list; int flags; int type; void* label; int path; int enum_idx; int type_default; void* exts; } ;
typedef TYPE_1__ menu_displaylist_info_t ;
typedef int file_list_t ;


 int DISPLAYLIST_MAIN_MENU ;
 int FILE_TYPE_PLAIN ;
 int MENU_ENUM_LABEL_MAIN_MENU ;
 int menu_displaylist_ctl (int ,TYPE_1__*) ;
 int menu_displaylist_info_free (TYPE_1__*) ;
 int menu_displaylist_info_init (TYPE_1__*) ;
 int menu_displaylist_process (TYPE_1__*) ;
 int menu_entries_append_enum (int *,int ,void*,int ,int ,int ,int ) ;
 int * menu_entries_get_menu_stack_ptr (int ) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 char* msg_hash_to_str (int ) ;
 void* strdup (char*) ;

__attribute__((used)) static bool stripes_menu_init_list(void *data)
{
   menu_displaylist_info_t info;

   file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);

   menu_displaylist_info_init(&info);

   info.label = strdup(
         msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU));
   info.exts = strdup("lpl");
   info.type_default = FILE_TYPE_PLAIN;
   info.enum_idx = MENU_ENUM_LABEL_MAIN_MENU;

   menu_entries_append_enum(menu_stack, info.path,
         info.label,
         MENU_ENUM_LABEL_MAIN_MENU,
         info.type, info.flags, 0);

   info.list = selection_buf;

   if (!menu_displaylist_ctl(DISPLAYLIST_MAIN_MENU, &info))
      goto error;

   info.need_push = 1;

   if (!menu_displaylist_process(&info))
      goto error;

   menu_displaylist_info_free(&info);
   return 1;

error:
   menu_displaylist_info_free(&info);
   return 0;
}
