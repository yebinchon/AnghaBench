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
struct android_app {int destroyed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  config; int /*<<< orphan*/ * inputQueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct android_app*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct android_app* android_app) {
    FUNC2("android_app_destroy!");
    FUNC3(android_app);
    FUNC5(&android_app->mutex);
    if (android_app->inputQueue != NULL) {
        FUNC1(android_app->inputQueue);
    }
    FUNC0(android_app->config);
    android_app->destroyed = 1;
    FUNC4(&android_app->cond);
    FUNC6(&android_app->mutex);
    // Can't touch android_app object after this.
}