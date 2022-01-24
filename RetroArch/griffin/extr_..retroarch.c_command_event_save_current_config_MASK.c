#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  msg ;
typedef  enum override_type { ____Placeholder_override_type } override_type ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_OVERRIDES_ERROR_SAVING ; 
 int /*<<< orphan*/  MSG_OVERRIDES_SAVED_SUCCESSFULLY ; 
#define  OVERRIDE_CONTENT_DIR 131 
#define  OVERRIDE_CORE 130 
#define  OVERRIDE_GAME 129 
#define  OVERRIDE_NONE 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int runloop_overrides_active ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static void FUNC10(enum override_type type)
{
   char msg[128];

   msg[0] = '\0';

   switch (type)
   {
      case OVERRIDE_NONE:
         if (FUNC6(RARCH_PATH_CONFIG))
            FUNC9(msg, "[config] Config directory not set, cannot save configuration.",
                  sizeof(msg));
         else
            FUNC2(FUNC5(RARCH_PATH_CONFIG), msg, sizeof(msg));
         break;
      case OVERRIDE_GAME:
      case OVERRIDE_CORE:
      case OVERRIDE_CONTENT_DIR:
         if (FUNC3(type))
         {
            FUNC9(msg, FUNC4(MSG_OVERRIDES_SAVED_SUCCESSFULLY), sizeof(msg));
            FUNC1("[config] [overrides] %s\n", msg);

            /* set overrides to active so the original config can be
               restored after closing content */
            runloop_overrides_active = true;
         }
         else
         {
            FUNC9(msg, FUNC4(MSG_OVERRIDES_ERROR_SAVING), sizeof(msg));
            FUNC0("[config] [overrides] %s\n", msg);
         }
         break;
   }

   if (!FUNC8(msg))
      FUNC7(msg, 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
}