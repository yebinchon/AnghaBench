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
struct android_app {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/ * pendingWindow; int /*<<< orphan*/ * window; } ;
typedef  int /*<<< orphan*/  ANativeWindow ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD_INIT_WINDOW ; 
 int /*<<< orphan*/  APP_CMD_TERM_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (struct android_app*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct android_app* android_app, ANativeWindow* window) {
    FUNC2(&android_app->mutex);
    if (android_app->pendingWindow != NULL) {
        FUNC0(android_app, APP_CMD_TERM_WINDOW);
    }
    android_app->pendingWindow = window;
    if (window != NULL) {
        FUNC0(android_app, APP_CMD_INIT_WINDOW);
    }
    while (android_app->window != android_app->pendingWindow) {
        FUNC1(&android_app->cond, &android_app->mutex);
    }
    FUNC3(&android_app->mutex);
}