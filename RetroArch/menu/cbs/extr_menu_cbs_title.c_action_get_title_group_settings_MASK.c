#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int size; TYPE_1__* elems; } ;
typedef  int /*<<< orphan*/  elem1 ;
typedef  int /*<<< orphan*/  elem0 ;
struct TYPE_2__ {char* data; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ADD_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_FAVORITES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_HISTORY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_HORIZONTAL_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_IMAGES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_MAIN_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_MUSIC_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NETPLAY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_PLAYLISTS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_SETTINGS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_VIDEO_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VIDEO_TAB ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC7(const char *path, const char *label,
      unsigned menu_type, char *s, size_t len)
{
   if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_MAIN_MENU)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_MAIN_MENU), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_HISTORY_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_HISTORY_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_FAVORITES_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_FAVORITES_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_IMAGES_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_IMAGES_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_MUSIC_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_MUSIC_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_VIDEO_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_VIDEO_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_SETTINGS_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_SETTINGS_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_PLAYLISTS_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_PLAYLISTS_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_ADD_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_ADD_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_NETPLAY_TAB)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_NETPLAY_TAB), len);
   else if (FUNC2(label, FUNC0(MENU_ENUM_LABEL_HORIZONTAL_MENU)))
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_HORIZONTAL_MENU), len);
   else
   {
      char elem0[255];
      char elem1[255];
      struct string_list *list_label = FUNC4(label, "|");

      elem0[0] = elem1[0] = '\0';

      if (list_label)
      {
         if (list_label->size > 0)
         {
            FUNC6(elem0, list_label->elems[0].data, sizeof(elem0));
            if (list_label->size > 1)
               FUNC6(elem1, list_label->elems[1].data, sizeof(elem1));
         }
         FUNC3(list_label);
      }

      FUNC6(s, elem0, len);

      if (!FUNC1(elem1))
      {
         FUNC5(s, " - ", len);
         FUNC5(s, elem1, len);
      }
   }

   return 0;
}