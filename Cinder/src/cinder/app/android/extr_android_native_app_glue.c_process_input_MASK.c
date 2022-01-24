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
struct android_poll_source {int dummy; } ;
struct android_app {int /*<<< orphan*/  inputQueue; int /*<<< orphan*/  (* onInputEvent ) (struct android_app*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  AInputEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct android_app*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct android_app* app, struct android_poll_source* source) {
    AInputEvent* event = NULL;
    while (FUNC1(app->inputQueue, &event) >= 0) {
        //LOGV("New input event: type=%d\n", AInputEvent_getType(event));
        if (FUNC2(app->inputQueue, event)) {
            continue;
        }
        int32_t handled = 0;
        if (app->onInputEvent != NULL) handled = app->onInputEvent(app, event);
        FUNC0(app->inputQueue, event, handled);
    }
}