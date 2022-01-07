
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int rarch_setting_t ;
struct TYPE_6__ {int * setting; } ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_7__ {TYPE_1__* list; } ;
typedef TYPE_3__ file_list_t ;
typedef enum menu_entry_type { ____Placeholder_menu_entry_type } menu_entry_type ;
struct TYPE_5__ {scalar_t__ actiondata; } ;


 int MENU_ENTRY_ACTION ;
 int MENU_ENTRY_BIND ;
 int MENU_ENTRY_BOOL ;
 int MENU_ENTRY_DIR ;
 int MENU_ENTRY_ENUM ;
 int MENU_ENTRY_FLOAT ;
 int MENU_ENTRY_HEX ;
 int MENU_ENTRY_INT ;
 int MENU_ENTRY_PATH ;
 int MENU_ENTRY_SIZE ;
 int MENU_ENTRY_STRING ;
 int MENU_ENTRY_UINT ;
 int MENU_SETTING_CTL_IS_OF_PATH_TYPE ;
 TYPE_3__* menu_entries_get_selection_buf_ptr_internal (int ) ;
 scalar_t__ menu_setting_ctl (int ,void*) ;
 int setting_get_type (int *) ;

enum menu_entry_type menu_entry_get_type(uint32_t i)
{
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr_internal(0);
   menu_file_list_cbs_t *cbs = ((void*)0);
   rarch_setting_t *setting = ((void*)0);



   if (menu_setting_ctl(MENU_SETTING_CTL_IS_OF_PATH_TYPE, (void*)setting))
      return MENU_ENTRY_PATH;

   cbs = selection_buf ?
      (menu_file_list_cbs_t*)selection_buf->list[i].actiondata : ((void*)0);
   setting = cbs ? cbs->setting : ((void*)0);

   if (setting)
   {
      switch (setting_get_type(setting))
      {
         case 137:
            return MENU_ENTRY_BOOL;
         case 138:
            return MENU_ENTRY_BIND;
         case 133:
            return MENU_ENTRY_INT;
         case 128:
            return MENU_ENTRY_UINT;
         case 131:
            return MENU_ENTRY_SIZE;
         case 135:
            return MENU_ENTRY_FLOAT;
         case 132:
            return MENU_ENTRY_PATH;
         case 136:
            return MENU_ENTRY_DIR;
         case 129:
            return MENU_ENTRY_ENUM;
         case 130:
            return MENU_ENTRY_STRING;
         case 134:
            return MENU_ENTRY_HEX;

         default:
            break;
      }
   }

   return MENU_ENTRY_ACTION;
}
