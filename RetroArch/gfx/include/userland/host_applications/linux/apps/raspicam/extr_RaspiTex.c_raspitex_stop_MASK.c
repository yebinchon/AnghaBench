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
struct TYPE_3__ {int preview_stop; int /*<<< orphan*/  preview_thread; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(RASPITEX_STATE *state)
{
   if (! state->preview_stop)
   {
      FUNC0("Stopping GL preview");
      state->preview_stop = 1;
      FUNC1(&state->preview_thread, NULL);
   }
}