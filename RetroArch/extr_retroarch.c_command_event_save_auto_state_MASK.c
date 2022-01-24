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
struct TYPE_7__ {int /*<<< orphan*/  savestate_auto_save; } ;
struct TYPE_9__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_8__ {int /*<<< orphan*/  savestate; } ;
struct TYPE_10__ {TYPE_2__ name; } ;
typedef  TYPE_4__ global_t ;

/* Variables and functions */
 scalar_t__ CORE_TYPE_DUMMY ; 
 int /*<<< orphan*/  MSG_AUTO_SAVE_STATE_TO ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_BASENAME ; 
 scalar_t__ FUNC1 (int,int) ; 
 TYPE_3__* configuration_settings ; 
 int FUNC2 (char const*,int,int) ; 
 scalar_t__ current_core_type ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_4__ g_extern ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ rcheevos_hardcore_active ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(void)
{
   bool ret                    = false;
   char *savestate_name_auto   = NULL;
   size_t
      savestate_name_auto_size = PATH_MAX_LENGTH * sizeof(char);
   settings_t *settings        = configuration_settings;
   global_t   *global          = &g_extern;

   if (!global || !settings || !settings->bools.savestate_auto_save)
      return false;
   if (current_core_type == CORE_TYPE_DUMMY)
      return false;

   if (FUNC8(FUNC6(FUNC7(RARCH_PATH_BASENAME))))
      return false;

#ifdef HAVE_CHEEVOS
   if (rcheevos_hardcore_active)
      return false;
#endif

   savestate_name_auto         = (char*)
      FUNC1(PATH_MAX_LENGTH, sizeof(*savestate_name_auto));

   FUNC3(savestate_name_auto, global->name.savestate,
         ".auto", savestate_name_auto_size);

   ret = FUNC2((const char*)savestate_name_auto, true, true);
   FUNC0("%s \"%s\" %s.\n",
         FUNC5(MSG_AUTO_SAVE_STATE_TO),
         savestate_name_auto, ret ?
         "succeeded" : "failed");

   FUNC4(savestate_name_auto);
   return true;
}