#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  process; struct android_app* app; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  process; struct android_app* app; int /*<<< orphan*/  id; } ;
struct android_app {int running; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/ * looper; TYPE_3__ cmdPollSource; int /*<<< orphan*/  msgread; TYPE_2__ inputPollSource; TYPE_1__* activity; int /*<<< orphan*/  config; } ;
struct TYPE_4__ {int /*<<< orphan*/  assetManager; } ;
typedef  int /*<<< orphan*/  ALooper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ALOOPER_EVENT_INPUT ; 
 int /*<<< orphan*/  ALOOPER_PREPARE_ALLOW_NON_CALLBACKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOPER_ID_INPUT ; 
 int /*<<< orphan*/  LOOPER_ID_MAIN ; 
 int /*<<< orphan*/  FUNC4 (struct android_app*) ; 
 int /*<<< orphan*/  FUNC5 (struct android_app*) ; 
 int /*<<< orphan*/  FUNC6 (struct android_app*) ; 
 int /*<<< orphan*/  process_cmd ; 
 int /*<<< orphan*/  process_input ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void* FUNC11(void* param) {
    struct android_app* android_app = (struct android_app*)param;

    android_app->config = FUNC1();
    FUNC0(android_app->config, android_app->activity->assetManager);

    FUNC6(android_app);

    android_app->cmdPollSource.id = LOOPER_ID_MAIN;
    android_app->cmdPollSource.app = android_app;
    android_app->cmdPollSource.process = process_cmd;
    android_app->inputPollSource.id = LOOPER_ID_INPUT;
    android_app->inputPollSource.app = android_app;
    android_app->inputPollSource.process = process_input;

    ALooper* looper = FUNC3(ALOOPER_PREPARE_ALLOW_NON_CALLBACKS);
    FUNC2(looper, android_app->msgread, LOOPER_ID_MAIN, ALOOPER_EVENT_INPUT, NULL,
            &android_app->cmdPollSource);
    android_app->looper = looper;

    FUNC9(&android_app->mutex);
    android_app->running = 1;
    FUNC7(&android_app->cond);
    FUNC10(&android_app->mutex);

    FUNC5(android_app);

    FUNC4(android_app);

    // In the case where the activity successfully gets destroyed (on config changes)
    // this will cause the destructors setup using pthread_key_create to fire.
    FUNC8((void*)NULL);
    return NULL;
}