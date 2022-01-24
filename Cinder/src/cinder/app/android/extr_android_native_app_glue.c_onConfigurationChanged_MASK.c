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
struct android_app {int dummy; } ;
struct TYPE_4__ {scalar_t__ instance; } ;
typedef  TYPE_1__ ANativeActivity ;

/* Variables and functions */
 int /*<<< orphan*/  APP_CMD_CONFIG_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct android_app*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ANativeActivity* activity) {
    struct android_app* android_app = (struct android_app*)activity->instance;
    FUNC0("ConfigurationChanged: %p\n", activity);
    FUNC1(android_app, APP_CMD_CONFIG_CHANGED);
}