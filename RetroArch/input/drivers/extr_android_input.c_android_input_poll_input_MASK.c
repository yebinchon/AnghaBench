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
struct android_app {int /*<<< orphan*/  inputQueue; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  android_input_t ;
typedef  int /*<<< orphan*/  AInputEvent ;

/* Variables and functions */
#define  AINPUT_EVENT_TYPE_KEY 129 
#define  AINPUT_EVENT_TYPE_MOTION 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int ANDROID_KEYBOARD_PORT ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct android_app*,int /*<<< orphan*/ *,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ g_android ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct android_app*,int*,int,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(android_input_t *android)
{
   AInputEvent              *event = NULL;
   struct android_app *android_app = (struct android_app*)g_android;

   /* Read all pending events. */
   while (FUNC4(android_app->inputQueue))
   {
      while (FUNC3(android_app->inputQueue, &event) >= 0)
      {
         int32_t   handled = 1;
         int predispatched = FUNC5(android_app->inputQueue, event);
         int        source = FUNC0(event);
         int    type_event = FUNC1(event);
         int            id = FUNC7(event);
         int          port = FUNC8(android, id, source);

         if (port < 0 && !FUNC14(id))
            FUNC13(android, android_app,
            &port, id, source);

         switch (type_event)
         {
            case AINPUT_EVENT_TYPE_MOTION:
               if (FUNC11(android, event,
                        port, source))
                  FUNC12(android, event, port, source);
               break;
            case AINPUT_EVENT_TYPE_KEY:
               {
                  int keycode = FUNC6(event);

                  if (FUNC14(id))
                  {
                     if (!predispatched)
                     {
                        FUNC10(event, keycode, &handled);
                        FUNC9(android_app, event, ANDROID_KEYBOARD_PORT, keycode, source, type_event, &handled);
                     }
                  }
                  else
                     FUNC9(android_app,
                        event, port, keycode, source, type_event, &handled);
               }
               break;
         }

         if (!predispatched)
            FUNC2(android_app->inputQueue, event,
                  handled);
      }
   }
}