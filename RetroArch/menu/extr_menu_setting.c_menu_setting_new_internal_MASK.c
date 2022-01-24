#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rarch_setting_t ;
struct TYPE_5__ {int index; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ rarch_setting_info_t ;
typedef  enum settings_list_type { ____Placeholder_settings_list_type } settings_list_type ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MAIN_MENU ; 
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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ **,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_1__*) ; 

__attribute__((used)) static rarch_setting_t *FUNC8(rarch_setting_info_t *list_info)
{
   unsigned i;
   rarch_setting_t* resized_list        = NULL;
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
#ifdef HAVE_VIDEO_LAYOUT
      SETTINGS_LIST_VIDEO_LAYOUT,
#endif
      SETTINGS_LIST_MENU,
      SETTINGS_LIST_MENU_FILE_BROWSER,
      SETTINGS_LIST_MULTIMEDIA,
#ifdef HAVE_TRANSLATE
      SETTINGS_LIST_AI_SERVICE,
#endif
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
   const char *root                     = FUNC4(MENU_ENUM_LABEL_MAIN_MENU);
   rarch_setting_t *list                = (rarch_setting_t*)FUNC1(
         list_info->size, sizeof(*list));
   rarch_setting_t **list_ptr           = NULL;

   if (!list)
      return NULL;

   for (i = 0; i < FUNC0(list_types); i++)
   {
      if (!FUNC6(list_types[i], &list, list_info, root))
      {
         FUNC2(list);
         return NULL;
      }
   }

   list_ptr = &list;

   if (!FUNC7(list_ptr, list_info))
   {
      FUNC2(list);
      return NULL;
   }
   FUNC3(list, list_info->index);
   list_info->index++;

   /* flatten this array to save ourselves some kilobytes. */
   resized_list = (rarch_setting_t*)FUNC5(list,
         list_info->index * sizeof(rarch_setting_t));
   if (!resized_list)
   {
      FUNC2(list);
      return NULL;
   }

   list = resized_list;

   return list;
}