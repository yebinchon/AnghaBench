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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  menu_display_handle_wallpaper_upload ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(const char *iconpath)
{
   char *path                  = NULL;
   settings_t *settings        = FUNC1();
   const char *path_menu_wp    = settings->paths.path_menu_wallpaper;

   if (!FUNC8(path_menu_wp))
      path = FUNC7(path_menu_wp);
   else if (!FUNC8(iconpath))
   {
      path    = (char*)FUNC4(PATH_MAX_LENGTH * sizeof(char));
      path[0] = '\0';

      FUNC2(path, iconpath, "bg.png",
            PATH_MAX_LENGTH * sizeof(char));
   }

   if (FUNC5(path))
      FUNC9(path,
            FUNC10(), 0,
            menu_display_handle_wallpaper_upload, NULL);

#ifdef ORBIS
   /* To avoid weird behaviour on orbis with remote host */
   RARCH_LOG("[XMB] after task\n");
   sleep(5);
#endif
   if (path)
      FUNC3(path);
}