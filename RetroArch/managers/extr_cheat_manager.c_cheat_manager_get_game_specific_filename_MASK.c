#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct retro_system_info {char* library_name; } ;
struct TYPE_8__ {char const* path_cheat_database; } ;
struct TYPE_9__ {TYPE_2__ paths; } ;
typedef  TYPE_3__ settings_t ;
typedef  int /*<<< orphan*/  s1 ;
struct TYPE_7__ {int /*<<< orphan*/  cheatfile; } ;
struct TYPE_10__ {TYPE_1__ name; } ;
typedef  TYPE_4__ global_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct retro_system_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,size_t) ; 
 TYPE_4__* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static bool FUNC8(
      char *s, size_t len,
      bool saving)
{
   char s1[PATH_MAX_LENGTH];
   struct retro_system_info system_info;
   settings_t *settings    = FUNC0();
   global_t *global        = FUNC3();
   const char *core_name   = NULL;
   const char *game_name   = NULL;

   s1[0]                   = '\0';

   if (!settings || !global)
      return false;

   if (!FUNC1(&system_info))
      return false;

   core_name = system_info.library_name;
   game_name = FUNC4(global->name.cheatfile);

   if (FUNC7(settings->paths.path_cheat_database) ||
         FUNC7(core_name) ||
         FUNC7(game_name))
      return false;

   s[0] = '\0';

   FUNC2(s1,
         settings->paths.path_cheat_database, core_name,
         sizeof(s1));

   if (saving)
   {
      /* Check if directory is valid, if not, create it */
      if (!FUNC5(s1))
         FUNC6(s1);
   }

   FUNC2(s, s1, game_name, len);

   return true;
}