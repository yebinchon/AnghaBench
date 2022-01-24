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
struct android_app {size_t savedStateSize; int msgread; int msgwrite; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  running; int /*<<< orphan*/  thread; scalar_t__ savedState; int /*<<< orphan*/ * activity; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  ANativeActivity ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  android_app_entry ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct android_app*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct android_app*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct android_app* FUNC14(ANativeActivity* activity,
        void* savedState, size_t savedStateSize) {
    struct android_app* android_app = (struct android_app*)FUNC1(sizeof(struct android_app));
    FUNC3(android_app, 0, sizeof(struct android_app));
    android_app->activity = activity;

    FUNC10(&android_app->mutex, NULL);
    FUNC7(&android_app->cond, NULL);

    if (savedState != NULL) {
        android_app->savedState = FUNC1(savedStateSize);
        android_app->savedStateSize = savedStateSize;
        FUNC2(android_app->savedState, savedState, savedStateSize);
    }

    int msgpipe[2];
    if (FUNC4(msgpipe)) {
        FUNC0("could not create pipe: %s", FUNC13(errno));
        return NULL;
    }
    android_app->msgread = msgpipe[0];
    android_app->msgwrite = msgpipe[1];

    pthread_attr_t attr; 
    FUNC5(&attr);
    FUNC6(&attr, PTHREAD_CREATE_DETACHED);
    FUNC9(&android_app->thread, &attr, android_app_entry, android_app);

    // Wait for thread to start.
    FUNC11(&android_app->mutex);
    while (!android_app->running) {
        FUNC8(&android_app->cond, &android_app->mutex);
    }
    FUNC12(&android_app->mutex);

    return android_app;
}