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
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_4__ {int /*<<< orphan*/  preview_thread; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  preview_worker ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC3(RASPITEX_STATE *state)
{
   VCOS_STATUS_T status;

   FUNC1("%s", VCOS_FUNCTION);
   status = FUNC2(&state->preview_thread, "preview-worker",
                               NULL, preview_worker, state);

   if (status != VCOS_SUCCESS)
      FUNC0("%s: Failed to start worker thread %d",
                     VCOS_FUNCTION, status);

   return (status == VCOS_SUCCESS ? 0 : -1);
}