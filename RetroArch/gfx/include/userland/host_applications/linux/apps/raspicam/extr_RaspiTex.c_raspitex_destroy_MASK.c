#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  completed_sem; int /*<<< orphan*/  start_sem; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* close ) (TYPE_3__*) ;int /*<<< orphan*/  (* destroy_native_window ) (TYPE_3__*) ;} ;
struct TYPE_9__ {TYPE_2__ capture; TYPE_1__ ops; int /*<<< orphan*/ * preview_queue; int /*<<< orphan*/ * preview_pool; } ;
typedef  TYPE_3__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(RASPITEX_STATE *state)
{
   FUNC4("%s", VCOS_FUNCTION);
   if (state->preview_pool)
   {
      FUNC0(state->preview_pool);
      state->preview_pool = NULL;
   }

   if (state->preview_queue)
   {
      FUNC1(state->preview_queue);
      state->preview_queue = NULL;
   }

   if (state->ops.destroy_native_window)
      state->ops.destroy_native_window(state);

   if (state->ops.close)
      state->ops.close(state);

   FUNC5(&state->capture.start_sem);
   FUNC5(&state->capture.completed_sem);
}