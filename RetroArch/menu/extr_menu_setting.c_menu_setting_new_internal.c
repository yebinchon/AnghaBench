
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_5__ {int index; int size; } ;
typedef TYPE_1__ rarch_setting_info_t ;
typedef enum settings_list_type { ____Placeholder_settings_list_type } settings_list_type ;


 unsigned int ARRAY_SIZE (int*) ;
 int MENU_ENUM_LABEL_MAIN_MENU ;
 int SETTINGS_LIST_AI_SERVICE ;
 int SETTINGS_LIST_AUDIO ;
 int SETTINGS_LIST_CHEATS ;
 int SETTINGS_LIST_CHEAT_DETAILS ;
 int SETTINGS_LIST_CHEAT_SEARCH ;
 int SETTINGS_LIST_CHEEVOS ;
 int SETTINGS_LIST_CONFIGURATION ;
 int SETTINGS_LIST_CORE ;
 int SETTINGS_LIST_CORE_UPDATER ;
 int SETTINGS_LIST_CRT_SWITCHRES ;
 int SETTINGS_LIST_DIRECTORY ;
 int SETTINGS_LIST_DRIVERS ;
 int SETTINGS_LIST_FONT ;
 int SETTINGS_LIST_FRAME_THROTTLING ;
 int SETTINGS_LIST_FRAME_TIME_COUNTER ;
 int SETTINGS_LIST_INPUT ;
 int SETTINGS_LIST_INPUT_HOTKEY ;
 int SETTINGS_LIST_LAKKA_SERVICES ;
 int SETTINGS_LIST_LOGGING ;
 int SETTINGS_LIST_MAIN_MENU ;
 int SETTINGS_LIST_MENU ;
 int SETTINGS_LIST_MENU_FILE_BROWSER ;
 int SETTINGS_LIST_MENU_SOUNDS ;
 int SETTINGS_LIST_MIDI ;
 int SETTINGS_LIST_MULTIMEDIA ;
 int SETTINGS_LIST_NETPLAY ;
 int SETTINGS_LIST_OVERLAY ;
 int SETTINGS_LIST_PLAYLIST ;
 int SETTINGS_LIST_POWER_MANAGEMENT ;
 int SETTINGS_LIST_PRIVACY ;
 int SETTINGS_LIST_RECORDING ;
 int SETTINGS_LIST_REWIND ;
 int SETTINGS_LIST_SAVING ;
 int SETTINGS_LIST_USER ;
 int SETTINGS_LIST_USER_ACCOUNTS ;
 int SETTINGS_LIST_USER_ACCOUNTS_CHEEVOS ;
 int SETTINGS_LIST_USER_ACCOUNTS_TWITCH ;
 int SETTINGS_LIST_USER_ACCOUNTS_YOUTUBE ;
 int SETTINGS_LIST_USER_INTERFACE ;
 int SETTINGS_LIST_VIDEO ;
 int SETTINGS_LIST_VIDEO_LAYOUT ;
 scalar_t__ calloc (int ,int) ;
 int free (int *) ;
 int menu_setting_terminate_last (int *,int) ;
 char* msg_hash_to_str (int ) ;
 scalar_t__ realloc (int *,int) ;
 int setting_append_list (int,int **,TYPE_1__*,char const*) ;
 int settings_list_append (int **,TYPE_1__*) ;

__attribute__((used)) static rarch_setting_t *menu_setting_new_internal(rarch_setting_info_t *list_info)
{
   unsigned i;
   rarch_setting_t* resized_list = ((void*)0);
   enum settings_list_type list_types[] =
   {
      SETTINGS_LIST_MAIN_MENU,
      SETTINGS_LIST_DRIVERS,
      SETTINGS_LIST_CORE,
      SETTINGS_LIST_CONFIGURATION,
      SETTINGS_LIST_LOGGING,
      SETTINGS_LIST_SAVING,
      SETTINGS_LIST_REWIND,
      SETTINGS_LIST_CHEAT_DETAILS,
      SETTINGS_LIST_CHEAT_SEARCH,
      SETTINGS_LIST_CHEATS,
      SETTINGS_LIST_VIDEO,
      SETTINGS_LIST_CRT_SWITCHRES,
      SETTINGS_LIST_AUDIO,
      SETTINGS_LIST_INPUT,
      SETTINGS_LIST_INPUT_HOTKEY,
      SETTINGS_LIST_RECORDING,
      SETTINGS_LIST_FRAME_THROTTLING,
      SETTINGS_LIST_FRAME_TIME_COUNTER,
      SETTINGS_LIST_FONT,
      SETTINGS_LIST_OVERLAY,



      SETTINGS_LIST_MENU,
      SETTINGS_LIST_MENU_FILE_BROWSER,
      SETTINGS_LIST_MULTIMEDIA,



      SETTINGS_LIST_USER_INTERFACE,
      SETTINGS_LIST_POWER_MANAGEMENT,
      SETTINGS_LIST_MENU_SOUNDS,
      SETTINGS_LIST_PLAYLIST,
      SETTINGS_LIST_CHEEVOS,
      SETTINGS_LIST_CORE_UPDATER,
      SETTINGS_LIST_NETPLAY,
      SETTINGS_LIST_LAKKA_SERVICES,
      SETTINGS_LIST_USER,
      SETTINGS_LIST_USER_ACCOUNTS,
      SETTINGS_LIST_USER_ACCOUNTS_CHEEVOS,
      SETTINGS_LIST_USER_ACCOUNTS_YOUTUBE,
      SETTINGS_LIST_USER_ACCOUNTS_TWITCH,
      SETTINGS_LIST_DIRECTORY,
      SETTINGS_LIST_PRIVACY,
      SETTINGS_LIST_MIDI
   };
   const char *root = msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU);
   rarch_setting_t *list = (rarch_setting_t*)calloc(
         list_info->size, sizeof(*list));
   rarch_setting_t **list_ptr = ((void*)0);

   if (!list)
      return ((void*)0);

   for (i = 0; i < ARRAY_SIZE(list_types); i++)
   {
      if (!setting_append_list(list_types[i], &list, list_info, root))
      {
         free(list);
         return ((void*)0);
      }
   }

   list_ptr = &list;

   if (!settings_list_append(list_ptr, list_info))
   {
      free(list);
      return ((void*)0);
   }
   menu_setting_terminate_last(list, list_info->index);
   list_info->index++;


   resized_list = (rarch_setting_t*)realloc(list,
         list_info->index * sizeof(rarch_setting_t));
   if (!resized_list)
   {
      free(list);
      return ((void*)0);
   }

   list = resized_list;

   return list;
}
