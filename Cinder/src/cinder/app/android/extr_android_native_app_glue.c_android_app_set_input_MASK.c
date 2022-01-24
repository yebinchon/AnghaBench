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
struct android_app {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/ * pendingInputQueue; int /*<<< orphan*/ * inputQueue; } ;
typedef  int /*<<< orphan*/  AInputQueue ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD_INPUT_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (struct android_app*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct android_app* android_app, AInputQueue* inputQueue) {
    FUNC2(&android_app->mutex);
    android_app->pendingInputQueue = inputQueue;
    FUNC0(android_app, APP_CMD_INPUT_CHANGED);
    while (android_app->inputQueue != android_app->pendingInputQueue) {
        FUNC1(&android_app->cond, &android_app->mutex);
    }
    FUNC3(&android_app->mutex);
}