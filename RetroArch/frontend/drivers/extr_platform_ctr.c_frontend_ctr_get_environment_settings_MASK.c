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
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dirs; TYPE_1__ path; } ;

/* Variables and functions */
 size_t DEFAULT_DIR_ASSETS ; 
 size_t DEFAULT_DIR_CORE ; 
 size_t DEFAULT_DIR_CORE_ASSETS ; 
 size_t DEFAULT_DIR_CORE_INFO ; 
 size_t DEFAULT_DIR_CURSOR ; 
 size_t DEFAULT_DIR_DATABASE ; 
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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elf_path_cst ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ g_defaults ; 

__attribute__((used)) static void FUNC4(int* argc, char* argv[],
      void* args, void* params_data)
{
   (void)args;

   FUNC2(g_defaults.dirs[DEFAULT_DIR_PORT], elf_path_cst, sizeof(g_defaults.dirs[DEFAULT_DIR_PORT]));
   FUNC0("port dir: [%s]\n", g_defaults.dirs[DEFAULT_DIR_PORT]);

   FUNC3(g_defaults.dirs[DEFAULT_DIR_CORE_ASSETS], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "downloads", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE_ASSETS]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_ASSETS], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "media", sizeof(g_defaults.dirs[DEFAULT_DIR_ASSETS]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_CORE], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "cores", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_CORE_INFO], g_defaults.dirs[DEFAULT_DIR_CORE],
                      "info", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE_INFO]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_SAVESTATE], g_defaults.dirs[DEFAULT_DIR_CORE],
                      "savestates", sizeof(g_defaults.dirs[DEFAULT_DIR_SAVESTATE]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_SRAM], g_defaults.dirs[DEFAULT_DIR_CORE],
                      "savefiles", sizeof(g_defaults.dirs[DEFAULT_DIR_SRAM]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_SYSTEM], g_defaults.dirs[DEFAULT_DIR_CORE],
                      "system", sizeof(g_defaults.dirs[DEFAULT_DIR_SYSTEM]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_PLAYLIST], g_defaults.dirs[DEFAULT_DIR_CORE],
                      "playlists", sizeof(g_defaults.dirs[DEFAULT_DIR_PLAYLIST]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_MENU_CONFIG], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "config", sizeof(g_defaults.dirs[DEFAULT_DIR_MENU_CONFIG]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_REMAP], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "config/remaps", sizeof(g_defaults.dirs[DEFAULT_DIR_REMAP]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_VIDEO_FILTER], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "filters", sizeof(g_defaults.dirs[DEFAULT_DIR_VIDEO_FILTER]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_DATABASE], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "database/rdb", sizeof(g_defaults.dirs[DEFAULT_DIR_DATABASE]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_CURSOR], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "database/cursors", sizeof(g_defaults.dirs[DEFAULT_DIR_CURSOR]));
   FUNC3(g_defaults.dirs[DEFAULT_DIR_LOGS], g_defaults.dirs[DEFAULT_DIR_PORT],
                      "logs", sizeof(g_defaults.dirs[DEFAULT_DIR_LOGS]));
   FUNC3(g_defaults.path.config, g_defaults.dirs[DEFAULT_DIR_PORT],
                      FUNC1(FILE_PATH_MAIN_CONFIG), sizeof(g_defaults.path.config));
}