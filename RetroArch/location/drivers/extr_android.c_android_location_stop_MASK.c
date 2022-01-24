#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct android_app {TYPE_1__* activity; } ;
struct TYPE_4__ {int /*<<< orphan*/  onLocationStop; } ;
typedef  TYPE_2__ androidlocation_t ;
struct TYPE_3__ {int /*<<< orphan*/  clazz; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ g_android ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *data)
{
   struct android_app *android_app = (struct android_app*)g_android;
   androidlocation_t *androidlocation = (androidlocation_t*)data;
   JNIEnv *env = FUNC1();
   if (!env)
      return;

   FUNC0(env, android_app->activity->clazz,
         androidlocation->onLocationStop);
}