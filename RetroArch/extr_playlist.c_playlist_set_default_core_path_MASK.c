#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  real_core_path ;
struct TYPE_3__ {char* default_core_path; int modified; } ;
typedef  TYPE_1__ playlist_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  PLAYLIST_SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

void FUNC6(playlist_t *playlist, const char *core_path)
{
   char real_core_path[PATH_MAX_LENGTH];

   real_core_path[0] = '\0';

   if (!playlist || FUNC3(core_path))
      return;

   /* Get 'real' core path */
   FUNC5(real_core_path, core_path, sizeof(real_core_path));
   if (!FUNC4(real_core_path, "DETECT"))
       FUNC1(PLAYLIST_SAVE, real_core_path, sizeof(real_core_path));

   if (FUNC3(real_core_path))
      return;

   if (!FUNC4(playlist->default_core_path, real_core_path))
   {
      if (playlist->default_core_path)
         FUNC0(playlist->default_core_path);
      playlist->default_core_path = FUNC2(real_core_path);
      playlist->modified = true;
   }
}