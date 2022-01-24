#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; } ;
typedef  TYPE_2__ retro_task_t ;
struct TYPE_6__ {int /*<<< orphan*/  enable; int /*<<< orphan*/  opacity; } ;
struct TYPE_8__ {scalar_t__ resolve_pos; scalar_t__ size; TYPE_1__ deferred; int /*<<< orphan*/ * overlays; int /*<<< orphan*/ * active; int /*<<< orphan*/  state; } ;
typedef  TYPE_3__ overlay_loader_t ;

/* Variables and functions */
 int /*<<< orphan*/  OVERLAY_STATUS_DEFERRED_DONE ; 
 int /*<<< orphan*/  OVERLAY_STATUS_DEFERRED_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC5(retro_task_t *task)
{
   overlay_loader_t *loader  = (overlay_loader_t*)task->state;
   bool             not_done = loader->resolve_pos < loader->size;

   if (!not_done)
   {
      loader->state = OVERLAY_STATUS_DEFERRED_DONE;
      return;
   }

   if (!FUNC3(loader->overlays,
            loader->resolve_pos, loader->size))
   {
      FUNC0("[Overlay]: Failed to resolve next targets.\n");
      FUNC4(task, true);
      loader->state   = OVERLAY_STATUS_DEFERRED_ERROR;
      return;
   }

   if (loader->resolve_pos == 0)
   {
      loader->active = &loader->overlays[0];

#if 0
      /* TODO: MOVE TO MAIN THREAD / CALLBACK */
      input_overlay_load_active(loader->deferred.opacity);
      input_overlay_enable(loader->deferred.enable);
#endif
   }

   loader->resolve_pos += 1;
}