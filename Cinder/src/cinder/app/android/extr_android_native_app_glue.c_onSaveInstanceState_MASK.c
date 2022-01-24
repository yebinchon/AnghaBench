#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct android_app {size_t savedStateSize; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * savedState; int /*<<< orphan*/  cond; scalar_t__ stateSaved; } ;
struct TYPE_4__ {scalar_t__ instance; } ;
typedef  TYPE_1__ ANativeActivity ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD_SAVE_STATE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct android_app*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void* FUNC5(ANativeActivity* activity, size_t* outLen) {
    struct android_app* android_app = (struct android_app*)activity->instance;
    void* savedState = NULL;

    FUNC0("SaveInstanceState: %p\n", activity);
    FUNC3(&android_app->mutex);
    android_app->stateSaved = 0;
    FUNC1(android_app, APP_CMD_SAVE_STATE);
    while (!android_app->stateSaved) {
        FUNC2(&android_app->cond, &android_app->mutex);
    }

    if (android_app->savedState != NULL) {
        savedState = android_app->savedState;
        *outLen = android_app->savedStateSize;
        android_app->savedState = NULL;
        android_app->savedStateSize = 0;
    }

    FUNC4(&android_app->mutex);

    return savedState;
}