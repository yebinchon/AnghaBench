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
typedef  int /*<<< orphan*/  playlist_name ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_PATH_CONTENT_FAVORITES ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_HISTORY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_FAVORITES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_HISTORY_TAB ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC9(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   const char *playlist_file = NULL;

   if (FUNC5(path))
      return 0;

   playlist_file = FUNC2(path);

   if (FUNC5(playlist_file))
      return 0;

   if (FUNC7(FUNC3(playlist_file),
            "lpl"))
   {
      /* Handle content history */
      if (FUNC6(playlist_file, FUNC0(FILE_PATH_CONTENT_HISTORY)))
         FUNC8(s, FUNC1(MENU_ENUM_LABEL_VALUE_HISTORY_TAB), len);
      /* Handle favourites */
      else if (FUNC6(playlist_file, FUNC0(FILE_PATH_CONTENT_FAVORITES)))
         FUNC8(s, FUNC1(MENU_ENUM_LABEL_VALUE_FAVORITES_TAB), len);
      /* Handle collection playlists */
      else
      {
         char playlist_name[PATH_MAX_LENGTH];

         playlist_name[0] = '\0';

         FUNC8(playlist_name, playlist_file, sizeof(playlist_name));
         FUNC4(playlist_name);

         FUNC8(s, playlist_name, len);
      }
   }
   /* This should never happen, but if it does just set
    * the label to the file name (it's better than nothing...) */
   else
      FUNC8(s, playlist_file, len);

   return 0;
}