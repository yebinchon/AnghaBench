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
struct TYPE_3__ {int /*<<< orphan*/  menu; } ;
struct TYPE_4__ {TYPE_1__ settings; int /*<<< orphan*/ * dirs; } ;

/* Variables and functions */
 size_t DEFAULT_DIR_ASSETS ; 
 size_t DEFAULT_DIR_AUDIO_FILTER ; 
 size_t DEFAULT_DIR_AUTOCONFIG ; 
 size_t DEFAULT_DIR_CHEATS ; 
 size_t DEFAULT_DIR_CORE ; 
 size_t DEFAULT_DIR_CORE_ASSETS ; 
 size_t DEFAULT_DIR_CORE_INFO ; 
 size_t DEFAULT_DIR_CURSOR ; 
 size_t DEFAULT_DIR_DATABASE ; 
 size_t DEFAULT_DIR_LOGS ; 
 size_t DEFAULT_DIR_MENU_CONFIG ; 
 size_t DEFAULT_DIR_OVERLAY ; 
 size_t DEFAULT_DIR_PLAYLIST ; 
 size_t DEFAULT_DIR_RECORD_CONFIG ; 
 size_t DEFAULT_DIR_RECORD_OUTPUT ; 
 size_t DEFAULT_DIR_REMAP ; 
 size_t DEFAULT_DIR_SAVESTATE ; 
 size_t DEFAULT_DIR_SCREENSHOT ; 
 size_t DEFAULT_DIR_SHADER ; 
 size_t DEFAULT_DIR_SRAM ; 
 size_t DEFAULT_DIR_SYSTEM ; 
 size_t DEFAULT_DIR_THUMBNAILS ; 
 size_t DEFAULT_DIR_VIDEO_FILTER ; 
 size_t DEFAULT_DIR_VIDEO_LAYOUT ; 
 size_t DEFAULT_DIR_WALLPAPERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ g_defaults ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(int *argc, char *argv[],
      void *args, void *params_data)
{
   FUNC1();

   FUNC0(g_defaults.dirs[DEFAULT_DIR_ASSETS],
      ":\\assets", sizeof(g_defaults.dirs[DEFAULT_DIR_ASSETS]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_AUDIO_FILTER],
      ":\\filters\\audio", sizeof(g_defaults.dirs[DEFAULT_DIR_AUDIO_FILTER]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_VIDEO_FILTER],
      ":\\filters\\video", sizeof(g_defaults.dirs[DEFAULT_DIR_VIDEO_FILTER]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_CHEATS],
      ":\\cheats", sizeof(g_defaults.dirs[DEFAULT_DIR_CHEATS]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_DATABASE],
      ":\\database\\rdb", sizeof(g_defaults.dirs[DEFAULT_DIR_DATABASE]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_CURSOR],
      ":\\database\\cursors", sizeof(g_defaults.dirs[DEFAULT_DIR_CURSOR]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_PLAYLIST],
      ":\\playlists", sizeof(g_defaults.dirs[DEFAULT_DIR_ASSETS]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_RECORD_CONFIG],
      ":\\config\\record", sizeof(g_defaults.dirs[DEFAULT_DIR_RECORD_CONFIG]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_RECORD_OUTPUT],
      ":\\recordings", sizeof(g_defaults.dirs[DEFAULT_DIR_RECORD_OUTPUT]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_MENU_CONFIG],
      ":\\config", sizeof(g_defaults.dirs[DEFAULT_DIR_MENU_CONFIG]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_REMAP],
      ":\\config\\remaps", sizeof(g_defaults.dirs[DEFAULT_DIR_REMAP]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_WALLPAPERS],
      ":\\assets\\wallpapers", sizeof(g_defaults.dirs[DEFAULT_DIR_WALLPAPERS]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_THUMBNAILS],
      ":\\thumbnails", sizeof(g_defaults.dirs[DEFAULT_DIR_THUMBNAILS]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_OVERLAY],
      ":\\overlays", sizeof(g_defaults.dirs[DEFAULT_DIR_OVERLAY]));
#ifdef HAVE_VIDEO_LAYOUT
   fill_pathname_expand_special(g_defaults.dirs[DEFAULT_DIR_VIDEO_LAYOUT],
      ":\\layouts", sizeof(g_defaults.dirs[DEFAULT_DIR_VIDEO_LAYOUT]));
#endif
   FUNC0(g_defaults.dirs[DEFAULT_DIR_CORE],
      ":\\cores", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_CORE_INFO],
      ":\\info", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE_INFO]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_AUTOCONFIG],
      ":\\autoconfig", sizeof(g_defaults.dirs[DEFAULT_DIR_AUTOCONFIG]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_SHADER],
      ":\\shaders", sizeof(g_defaults.dirs[DEFAULT_DIR_SHADER]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_CORE_ASSETS],
      ":\\downloads", sizeof(g_defaults.dirs[DEFAULT_DIR_CORE_ASSETS]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_SCREENSHOT],
      ":\\screenshots", sizeof(g_defaults.dirs[DEFAULT_DIR_SCREENSHOT]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_SRAM],
      ":\\saves", sizeof(g_defaults.dirs[DEFAULT_DIR_SRAM]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_SAVESTATE],
      ":\\states", sizeof(g_defaults.dirs[DEFAULT_DIR_SAVESTATE]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_SYSTEM],
      ":\\system", sizeof(g_defaults.dirs[DEFAULT_DIR_SYSTEM]));
   FUNC0(g_defaults.dirs[DEFAULT_DIR_LOGS],
      ":\\logs", sizeof(g_defaults.dirs[DEFAULT_DIR_LOGS]));
#ifdef HAVE_MENU
#if defined(HAVE_OPENGL) || defined(HAVE_OPENGL1) || defined(HAVE_OPENGLES) || defined(HAVE_OPENGL_CORE)
   strlcpy(g_defaults.settings.menu, "xmb", sizeof(g_defaults.settings.menu));
#endif
#endif
}