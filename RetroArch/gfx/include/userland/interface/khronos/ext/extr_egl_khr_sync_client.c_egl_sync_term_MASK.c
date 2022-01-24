#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  master; int /*<<< orphan*/  serversync; } ;
typedef  TYPE_1__ EGL_SYNC_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTDESTROYSYNC_ID ; 
 scalar_t__ EGL_SYNC_FENCE_KHR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eglIntDestroySync_impl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(EGL_SYNC_T *sync_master)
{
   CLIENT_THREAD_STATE_T *thread = FUNC0();
#if SYNC_FENCE_KHR_SHORTCUT == 1
   if (sync_master->type != EGL_SYNC_FENCE_KHR)
#endif
   {
      FUNC1(eglIntDestroySync_impl,
                thread,
                EGLINTDESTROYSYNC_ID,
                FUNC2(sync_master->serversync));
   }
   FUNC3(&sync_master->master);
}