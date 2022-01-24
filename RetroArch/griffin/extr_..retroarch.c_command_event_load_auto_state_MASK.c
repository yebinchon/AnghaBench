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
struct TYPE_7__ {int /*<<< orphan*/  savestate_auto_load; } ;
struct TYPE_9__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_8__ {int /*<<< orphan*/  savestate; } ;
struct TYPE_10__ {TYPE_2__ name; } ;
typedef  TYPE_4__ global_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_AUTOLOADING_SAVESTATE_FROM ; 
 int /*<<< orphan*/  MSG_FOUND_AUTO_SAVESTATE_IN ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  RARCH_NETPLAY_CTL_IS_ENABLED ; 
 scalar_t__ FUNC1 (int,int) ; 
 TYPE_3__* configuration_settings ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_4__ g_extern ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ rcheevos_hardcore_active ; 

__attribute__((used)) static void FUNC8(void)
{
   bool ret                        = false;
   char *savestate_name_auto       = NULL;
   size_t savestate_name_auto_size = PATH_MAX_LENGTH * sizeof(char);
   settings_t *settings            = configuration_settings;
   global_t   *global              = &g_extern;

   if (!global || !settings->bools.savestate_auto_load)
      return;
#ifdef HAVE_CHEEVOS
   if (rcheevos_hardcore_active)
      return;
#endif
#ifdef HAVE_NETWORKING
   if (netplay_driver_ctl(RARCH_NETPLAY_CTL_IS_ENABLED, NULL))
      return;
#endif

   savestate_name_auto             = (char*)FUNC1(PATH_MAX_LENGTH,
         sizeof(*savestate_name_auto));

   FUNC3(savestate_name_auto, global->name.savestate,
         ".auto", savestate_name_auto_size);

   if (!FUNC7(savestate_name_auto))
   {
      FUNC4(savestate_name_auto);
      return;
   }

   ret = FUNC2(savestate_name_auto, false, true);

   FUNC0("%s: %s\n%s \"%s\" %s.\n",
         FUNC5(MSG_FOUND_AUTO_SAVESTATE_IN),
         savestate_name_auto,
         FUNC5(MSG_AUTOLOADING_SAVESTATE_FROM),
         savestate_name_auto, ret ? "succeeded" : "failed"
         );

   FUNC4(savestate_name_auto);
}