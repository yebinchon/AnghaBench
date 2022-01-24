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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int* name; int /*<<< orphan*/  master; int /*<<< orphan*/  serversync; scalar_t__ status; scalar_t__ type; scalar_t__ threshold; scalar_t__ condition; } ;
typedef  scalar_t__ EGLint ;
typedef  scalar_t__ EGLenum ;
typedef  TYPE_1__ EGL_SYNC_T ;
typedef  scalar_t__ EGLSyncKHR ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTCREATESYNCFENCE_ID ; 
 int /*<<< orphan*/  EGLINTCREATESYNC_ID ; 
 scalar_t__ EGL_SYNC_FENCE_KHR ; 
 scalar_t__ KHR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eglIntCreateSyncFence_impl ; 
 int /*<<< orphan*/  eglIntCreateSync_impl ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static EGL_SYNC_T *FUNC11(EGLSyncKHR sync, EGLenum type,
      EGLint condition, EGLint threshold, EGLint status)
{
   CLIENT_THREAD_STATE_T *thread = FUNC0();
   EGL_SYNC_T *sync_ptr = (EGL_SYNC_T *)FUNC7(sizeof(EGL_SYNC_T), "EGL_SYNC_T");
   uint64_t pid = FUNC10(thread);
   uint32_t sem;

   if (!sync_ptr)
      return 0;

   sync_ptr->condition = condition;
   sync_ptr->threshold = threshold;
   sync_ptr->type = type;
   sync_ptr->status = status;

   sync_ptr->name[0] = (int)pid;
   sync_ptr->name[1] = (int)(pid >> 32);
   sync_ptr->name[2] = (int)sync;

   if (FUNC8(&sync_ptr->master, sync_ptr->name, 0) != KHR_SUCCESS) {
      FUNC6(sync_ptr);
      return 0;
   }

   sem = (uint32_t) sync;
#if SYNC_FENCE_KHR_SHORTCUT == 1
   if (type == EGL_SYNC_FENCE_KHR){
      RPC_CALL3(eglIntCreateSyncFence_impl,
                               thread,
                               EGLINTCREATESYNCFENCE_ID,
                               RPC_UINT(condition),
                               RPC_INT(threshold),
                               RPC_UINT(sem));
   } else
#endif
   {
      sync_ptr->serversync = FUNC5(FUNC2(eglIntCreateSync_impl,
                                                 thread,
                                                 EGLINTCREATESYNC_ID,
                                                 FUNC4(type),
                                                 FUNC4(condition),
                                                 FUNC3(threshold),
                                                 FUNC4(sem)));
      if (!sync_ptr->serversync) {
         FUNC9(&sync_ptr->master);
         FUNC6(sync_ptr);
         return 0;
      }
   }
   return sync_ptr;
}