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
struct android_app {int /*<<< orphan*/  mutex; scalar_t__ savedStateSize; int /*<<< orphan*/ * savedState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct android_app* android_app) {
    FUNC1(&android_app->mutex);
    if (android_app->savedState != NULL) {
        FUNC0(android_app->savedState);
        android_app->savedState = NULL;
        android_app->savedStateSize = 0;
    }
    FUNC2(&android_app->mutex);
}