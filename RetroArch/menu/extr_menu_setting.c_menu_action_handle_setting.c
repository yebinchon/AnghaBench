
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {char const* string; } ;
struct TYPE_20__ {char* name; int (* action_up ) (TYPE_2__*) ;int (* action_down ) (TYPE_2__*) ;int (* action_left ) (TYPE_2__*,int) ;int (* action_right ) (TYPE_2__*,int) ;int (* action_select ) (TYPE_2__*,int) ;int (* action_ok ) (TYPE_2__*,int) ;int (* action_cancel ) (TYPE_2__*) ;int (* action_start ) (TYPE_2__*) ;TYPE_1__ default_value; } ;
typedef TYPE_2__ rarch_setting_t ;
struct TYPE_21__ {unsigned int type; size_t directory_ptr; int * list; void* label; void* path; } ;
typedef TYPE_3__ menu_displaylist_info_t ;
typedef int file_list_t ;


 int DISPLAYLIST_GENERIC ;
 int RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE ;
 int RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH ;
 int menu_displaylist_ctl (int ,TYPE_3__*) ;
 int menu_displaylist_info_free (TYPE_3__*) ;
 int menu_displaylist_info_init (TYPE_3__*) ;
 int menu_displaylist_process (TYPE_3__*) ;
 int menu_driver_ctl (int ,int *) ;
 int * menu_entries_get_menu_stack_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 int menu_setting_generic (TYPE_2__*,int) ;
 int setting_get_type (TYPE_2__*) ;
 void* strdup (char const*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*,int) ;
 int stub4 (TYPE_2__*,int) ;
 int stub5 (TYPE_2__*,int) ;
 int stub6 (TYPE_2__*,int) ;
 int stub7 (TYPE_2__*) ;
 int stub8 (TYPE_2__*) ;

int menu_action_handle_setting(rarch_setting_t *setting,
      unsigned type, unsigned action, bool wraparound)
{
   if (!setting)
      return -1;

   switch (setting_get_type(setting))
   {
      case 132:
         if (action == 144)
         {
            menu_displaylist_info_t info;
            file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
            const char *name = setting->name;
            size_t selection = menu_navigation_get_selection();

            menu_displaylist_info_init(&info);

            info.path = strdup(setting->default_value.string);
            info.label = strdup(name);
            info.type = type;
            info.directory_ptr = selection;
            info.list = menu_stack;

            if (menu_displaylist_ctl(DISPLAYLIST_GENERIC, &info))
               menu_displaylist_process(&info);

            menu_displaylist_info_free(&info);
         }

      case 137:
      case 133:
      case 128:
      case 131:
      case 134:
      case 135:
      case 130:
      case 129:
      case 136:
      case 138:
      case 139:
         {
            int ret = -1;
            switch (action)
            {
               case 140:
                  if (setting->action_up)
                     ret = setting->action_up(setting);
                  break;
               case 146:
                  if (setting->action_down)
                     ret = setting->action_down(setting);
                  break;
               case 145:
                  if (setting->action_left)
                  {
                     ret = setting->action_left(setting, 0);
                     menu_driver_ctl(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH,
                           ((void*)0));
                     menu_driver_ctl(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE,
                           ((void*)0));
                  }
                  break;
               case 143:
                  if (setting->action_right)
                  {
                     ret = setting->action_right(setting, 0);
                     menu_driver_ctl(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH,
                           ((void*)0));
                     menu_driver_ctl(
                           RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE,
                           ((void*)0));
                  }
                  break;
               case 142:
                  if (setting->action_select)
                     ret = setting->action_select(setting, 1);
                  break;
               case 144:
                  if (setting->action_ok)
                     ret = setting->action_ok(setting, 0);
                  break;
               case 147:
                  if (setting->action_cancel)
                     ret = setting->action_cancel(setting);
                  break;
               case 141:
                  if (setting->action_start)
                     ret = setting->action_start(setting);
                  break;
            }

            if (ret == 0)
               return menu_setting_generic(setting, wraparound);
         }
         break;
      default:
         break;
   }

   return -1;
}
