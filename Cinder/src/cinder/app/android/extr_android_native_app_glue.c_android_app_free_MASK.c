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
struct android_app {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  msgwrite; int /*<<< orphan*/  msgread; int /*<<< orphan*/  destroyed; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (struct android_app*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct android_app*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct android_app* android_app) {
    FUNC6(&android_app->mutex);
    FUNC0(android_app, APP_CMD_DESTROY);
    while (!android_app->destroyed) {
        FUNC4(&android_app->cond, &android_app->mutex);
    }
    FUNC7(&android_app->mutex);

    FUNC1(android_app->msgread);
    FUNC1(android_app->msgwrite);
    FUNC3(&android_app->cond);
    FUNC5(&android_app->mutex);
    FUNC2(android_app);
}