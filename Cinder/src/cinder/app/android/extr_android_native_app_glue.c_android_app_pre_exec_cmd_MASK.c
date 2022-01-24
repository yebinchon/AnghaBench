#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct android_app {int activityState; int destroyRequested; TYPE_1__* activity; int /*<<< orphan*/  config; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  pendingWindow; int /*<<< orphan*/  window; int /*<<< orphan*/  inputPollSource; int /*<<< orphan*/  looper; int /*<<< orphan*/ * inputQueue; int /*<<< orphan*/ * pendingInputQueue; } ;
typedef  int int8_t ;
struct TYPE_2__ {int /*<<< orphan*/  assetManager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  APP_CMD_CONFIG_CHANGED 136 
#define  APP_CMD_DESTROY 135 
#define  APP_CMD_INIT_WINDOW 134 
#define  APP_CMD_INPUT_CHANGED 133 
#define  APP_CMD_PAUSE 132 
#define  APP_CMD_RESUME 131 
#define  APP_CMD_START 130 
#define  APP_CMD_STOP 129 
#define  APP_CMD_TERM_WINDOW 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  LOOPER_ID_INPUT ; 
 int /*<<< orphan*/  FUNC4 (struct android_app*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct android_app* android_app, int8_t cmd) {
    switch (cmd) {
        case APP_CMD_INPUT_CHANGED:
            //LOGV("APP_CMD_INPUT_CHANGED\n");
            FUNC6(&android_app->mutex);
            if (android_app->inputQueue != NULL) {
                FUNC2(android_app->inputQueue);
            }
            android_app->inputQueue = android_app->pendingInputQueue;
            if (android_app->inputQueue != NULL) {
                FUNC3("Attaching input queue to looper");
                FUNC1(android_app->inputQueue,
                        android_app->looper, LOOPER_ID_INPUT, NULL,
                        &android_app->inputPollSource);
            }
            FUNC5(&android_app->cond);
            FUNC7(&android_app->mutex);
            break;

        case APP_CMD_INIT_WINDOW:
            //LOGV("APP_CMD_INIT_WINDOW\n");
            FUNC6(&android_app->mutex);
            android_app->window = android_app->pendingWindow;
            FUNC5(&android_app->cond);
            FUNC7(&android_app->mutex);
            break;

        case APP_CMD_TERM_WINDOW:
            //LOGV("APP_CMD_TERM_WINDOW\n");
            FUNC5(&android_app->cond);
            break;

        case APP_CMD_RESUME:
        case APP_CMD_START:
        case APP_CMD_PAUSE:
        case APP_CMD_STOP:
            //LOGV("activityState=%d\n", cmd);
            FUNC6(&android_app->mutex);
            android_app->activityState = cmd;
            FUNC5(&android_app->cond);
            FUNC7(&android_app->mutex);
            break;

        case APP_CMD_CONFIG_CHANGED:
            //LOGV("APP_CMD_CONFIG_CHANGED\n");
            FUNC0(android_app->config,
                    android_app->activity->assetManager);
            FUNC4(android_app);
            break;

        case APP_CMD_DESTROY:
            //LOGV("APP_CMD_DESTROY\n");
            android_app->destroyRequested = 1;
            break;
    }
}