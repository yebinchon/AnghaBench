
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int flags; int (* action_right ) (TYPE_1__*,int) ;int action_select; int action_left; int change_handler; } ;
typedef TYPE_1__ rarch_setting_t ;
typedef enum menu_setting_ctl_state { ____Placeholder_menu_setting_ctl_state } menu_setting_ctl_state ;






 int RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE ;
 int RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH ;
 int SD_FLAG_BROWSER_ACTION ;
 int ST_ACTION ;
 int menu_driver_ctl (int ,int *) ;
 TYPE_1__* menu_setting_new () ;
 int setting_get_type (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int) ;

bool menu_setting_ctl(enum menu_setting_ctl_state state, void *data)
{
   uint64_t flags;

   switch (state)
   {
      case 130:
         {
            bool cbs_bound = 0;
            rarch_setting_t *setting = (rarch_setting_t*)data;

            if (!setting)
               return 0;

            flags = setting->flags;

            if (setting_get_type(setting) != ST_ACTION)
               return 0;

            if (!setting->change_handler)
               return 0;

            cbs_bound = (setting->action_right != ((void*)0));
            cbs_bound = cbs_bound || setting->action_left;
            cbs_bound = cbs_bound || setting->action_select;

            if (!cbs_bound)
               return 0;

            if (!(flags & SD_FLAG_BROWSER_ACTION))
               return 0;
         }
         break;
      case 129:
         {
            rarch_setting_t **setting = (rarch_setting_t**)data;
            if (!setting)
               return 0;
            *setting = menu_setting_new();
         }
         break;
      case 131:
         {
            rarch_setting_t *setting = (rarch_setting_t*)data;
            if (!setting)
               return 0;

            if (setting->action_right)
            {
               int ret = setting->action_right(setting, 0);
               menu_driver_ctl(
                     RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH, ((void*)0));
               menu_driver_ctl(
                     RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE, ((void*)0));
               if (ret == -1)
                  return 0;
            }
            else
               return 0;
         }
         break;
      case 128:
      default:
         break;
   }

   return 1;
}
