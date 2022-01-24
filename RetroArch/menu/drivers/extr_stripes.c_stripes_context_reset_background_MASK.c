#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* path_menu_wallpaper; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  menu_display_handle_wallpaper_upload ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(const char *iconpath)
{
   char *path                  = NULL;
   settings_t *settings        = FUNC0();
   const char *path_menu_wp    = settings->paths.path_menu_wallpaper;

   if (!FUNC6(path_menu_wp))
      path = FUNC5(path_menu_wp);
   else if (!FUNC6(iconpath))
   {
      path    = (char*)FUNC3(PATH_MAX_LENGTH * sizeof(char));
      path[0] = '\0';

      FUNC1(path, iconpath, "bg.png",
            PATH_MAX_LENGTH * sizeof(char));
   }

   if (FUNC4(path))
      FUNC7(path,
            FUNC8(), 0,
            menu_display_handle_wallpaper_upload, NULL);

   if (path)
      FUNC2(path);
}