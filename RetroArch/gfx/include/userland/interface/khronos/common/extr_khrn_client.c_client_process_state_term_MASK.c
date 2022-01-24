#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int inited; int /*<<< orphan*/  global_image_egl_images; int /*<<< orphan*/  syncs; int /*<<< orphan*/  windows; int /*<<< orphan*/  surfaces; int /*<<< orphan*/  contexts; } ;
typedef  TYPE_1__ CLIENT_PROCESS_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  callback_destroy_context ; 
 int /*<<< orphan*/  callback_destroy_surface ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(CLIENT_PROCESS_STATE_T *process)
{
   if (process->inited) {
      FUNC4(&process->contexts, callback_destroy_context, NULL);
      FUNC5(&process->contexts);

      FUNC4(&process->surfaces, callback_destroy_surface, NULL);
      FUNC5(&process->surfaces);

      FUNC5(&process->windows);

#if EGL_KHR_sync
      egl_sync_destroy_all(&process->syncs);
      khrn_pointer_map_term(&process->syncs);
#endif

#if EGL_BRCM_global_image && EGL_KHR_image
      khrn_global_image_map_term(&process->global_image_egl_images);
#endif

#if EGL_BRCM_perf_monitor
      egl_perf_monitor_term(process);
#endif

#if EGL_BRCM_driver_monitor
      egl_driver_monitor_term(process);
#endif

      process->inited = false;
   }
}