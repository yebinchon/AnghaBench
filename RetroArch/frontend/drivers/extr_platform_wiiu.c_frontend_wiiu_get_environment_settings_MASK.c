#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* config; } ;
struct TYPE_4__ {char** dirs; TYPE_1__ path; } ;

/* Variables and functions */
 size_t DEFAULT_DIR_ASSETS ; 
 size_t DEFAULT_DIR_CORE ; 
 size_t DEFAULT_DIR_CORE_ASSETS ; 
 size_t DEFAULT_DIR_CORE_INFO ; 
 size_t DEFAULT_DIR_CURSOR ; 
 size_t DEFAULT_DIR_DATABASE ; 
 unsigned int DEFAULT_DIR_LAST ; 
 size_t DEFAULT_DIR_LOGS ; 
 size_t DEFAULT_DIR_MENU_CONFIG ; 
 size_t DEFAULT_DIR_PLAYLIST ; 
 size_t DEFAULT_DIR_PORT ; 
 size_t DEFAULT_DIR_REMAP ; 
 size_t DEFAULT_DIR_SAVESTATE ; 
 size_t DEFAULT_DIR_SRAM ; 
 size_t DEFAULT_DIR_SYSTEM ; 
 size_t DEFAULT_DIR_VIDEO_FILTER ; 
 int /*<<< orphan*/  FILE_PATH_MAIN_CONFIG ; 
 int /*<<< orphan*/  elf_path_cst ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int) ; 
 TYPE_2__ g_defaults ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(int *argc, char *argv[],
      void *args, void *params_data)
{
   unsigned i;
   (void)args;

   FUNC1(g_defaults.dirs[DEFAULT_DIR_PORT], elf_path_cst, sizeof(g_defaults.dirs[DEFAULT_DIR_PORT]));

   FUNC2(g_defaults.dirs[DEFAULT_DIR_CORE_ASSETS], g_defaults.dirs[DEFAULT_DIR_PORT],
         "downloads", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE_ASSETS]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_ASSETS], g_defaults.dirs[DEFAULT_DIR_PORT],
         "media", sizeof(g_defaults.dirs[DEFAULT_DIR_ASSETS]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_CORE], g_defaults.dirs[DEFAULT_DIR_PORT],
         "cores", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_CORE_INFO], g_defaults.dirs[DEFAULT_DIR_CORE],
         "info", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE_INFO]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_SAVESTATE], g_defaults.dirs[DEFAULT_DIR_CORE],
         "savestates", sizeof(g_defaults.dirs[DEFAULT_DIR_SAVESTATE]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_SRAM], g_defaults.dirs[DEFAULT_DIR_CORE],
         "savefiles", sizeof(g_defaults.dirs[DEFAULT_DIR_SRAM]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_SYSTEM], g_defaults.dirs[DEFAULT_DIR_CORE],
         "system", sizeof(g_defaults.dirs[DEFAULT_DIR_SYSTEM]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_PLAYLIST], g_defaults.dirs[DEFAULT_DIR_CORE],
         "playlists", sizeof(g_defaults.dirs[DEFAULT_DIR_PLAYLIST]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_MENU_CONFIG], g_defaults.dirs[DEFAULT_DIR_PORT],
         "config", sizeof(g_defaults.dirs[DEFAULT_DIR_MENU_CONFIG]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_REMAP], g_defaults.dirs[DEFAULT_DIR_PORT],
         "config/remaps", sizeof(g_defaults.dirs[DEFAULT_DIR_REMAP]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_VIDEO_FILTER], g_defaults.dirs[DEFAULT_DIR_PORT],
         "filters", sizeof(g_defaults.dirs[DEFAULT_DIR_VIDEO_FILTER]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_DATABASE], g_defaults.dirs[DEFAULT_DIR_PORT],
         "database/rdb", sizeof(g_defaults.dirs[DEFAULT_DIR_DATABASE]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_CURSOR], g_defaults.dirs[DEFAULT_DIR_PORT],
         "database/cursors", sizeof(g_defaults.dirs[DEFAULT_DIR_CURSOR]));
   FUNC2(g_defaults.dirs[DEFAULT_DIR_LOGS], g_defaults.dirs[DEFAULT_DIR_CORE],
         "logs", sizeof(g_defaults.dirs[DEFAULT_DIR_LOGS]));
   FUNC2(g_defaults.path.config, g_defaults.dirs[DEFAULT_DIR_PORT],
         FUNC0(FILE_PATH_MAIN_CONFIG), sizeof(g_defaults.path.config));

   for (i = 0; i < DEFAULT_DIR_LAST; i++)
   {
      const char *dir_path = g_defaults.dirs[i];
      if (!FUNC4(dir_path))
         FUNC3(dir_path);
   }
}