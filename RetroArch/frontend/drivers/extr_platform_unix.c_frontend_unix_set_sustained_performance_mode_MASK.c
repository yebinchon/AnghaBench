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
struct TYPE_4__ {scalar_t__ setSustainedPerformanceMode; TYPE_1__* activity; } ;
struct TYPE_3__ {int /*<<< orphan*/  clazz; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_2__* g_android ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static void FUNC2(bool on)
{
#ifdef ANDROID
   JNIEnv *env = jni_thread_getenv();

   if (!env || !g_android)
      return;

   if (g_android->setSustainedPerformanceMode)
      CALL_VOID_METHOD_PARAM(env, g_android->activity->clazz,
            g_android->setSustainedPerformanceMode, on);
#endif
}