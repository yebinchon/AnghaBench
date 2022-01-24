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
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ menu_ctx_environment_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENVIRON_NONE ; 
 int /*<<< orphan*/  MENU_ENVIRON_RESET_HORIZONTAL_LIST ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_ENVIRONMENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   playlist_t *playlist = FUNC3();
   menu_ctx_environment_t menu_environ;

   if (!playlist)
      return -1;

   menu_environ.type = MENU_ENVIRON_NONE;
   menu_environ.data = NULL;

   path = FUNC4(playlist);

   FUNC1(path);

   menu_environ.type = MENU_ENVIRON_RESET_HORIZONTAL_LIST;

   FUNC2(RARCH_MENU_CTL_ENVIRONMENT, &menu_environ);

   return FUNC0(NULL, NULL, 0, 0);
}