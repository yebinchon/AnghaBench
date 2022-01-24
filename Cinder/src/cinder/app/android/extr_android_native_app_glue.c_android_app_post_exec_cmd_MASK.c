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
struct android_app {int stateSaved; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/ * window; } ;
typedef  int int8_t ;

/* Variables and functions */
#define  APP_CMD_RESUME 130 
#define  APP_CMD_SAVE_STATE 129 
#define  APP_CMD_TERM_WINDOW 128 
 int /*<<< orphan*/  FUNC0 (struct android_app*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct android_app* android_app, int8_t cmd) {
    switch (cmd) {
        case APP_CMD_TERM_WINDOW:
            //LOGV("APP_CMD_TERM_WINDOW\n");
            FUNC2(&android_app->mutex);
            android_app->window = NULL;
            FUNC1(&android_app->cond);
            FUNC3(&android_app->mutex);
            break;

        case APP_CMD_SAVE_STATE:
            //LOGV("APP_CMD_SAVE_STATE\n");
            FUNC2(&android_app->mutex);
            android_app->stateSaved = 1;
            FUNC1(&android_app->cond);
            FUNC3(&android_app->mutex);
            break;

        case APP_CMD_RESUME:
            FUNC0(android_app);
            break;
    }
}