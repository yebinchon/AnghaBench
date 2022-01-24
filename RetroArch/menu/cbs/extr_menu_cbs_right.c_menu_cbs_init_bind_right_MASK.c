#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HISTORY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HORIZONTAL_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_IMAGES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MAIN_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MUSIC_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_NETPLAY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_PLAYLISTS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SETTINGS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VIDEO_TAB ; 
 unsigned int MENU_SETTING_NO_ITEM ; 
 int /*<<< orphan*/  action_right_mainmenu ; 
 int /*<<< orphan*/  bind_right_generic ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 

int FUNC6(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      const char *menu_label,
      uint32_t label_hash)
{
   if (!cbs)
      return FUNC1();

   FUNC0(cbs, bind_right_generic);

   if (type == MENU_SETTING_NO_ITEM)
   {
      if (  FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_HISTORY_TAB))   ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_FAVORITES_TAB)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_PLAYLISTS_TAB)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_ADD_TAB)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_NETPLAY_TAB)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_MAIN_MENU)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_MUSIC_TAB)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_IMAGES_TAB)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_VIDEO_TAB)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_HORIZONTAL_MENU)) ||
            FUNC5(menu_label, FUNC4(MENU_ENUM_LABEL_SETTINGS_TAB))
         )
      {
            FUNC0(cbs, action_right_mainmenu);
            return 0;
      }
   }

   if (FUNC2(cbs, label, label_hash, menu_label
            ) == 0)
      return 0;

   if (FUNC3(cbs, type, menu_label ) == 0)
      return 0;

   return FUNC1();
}