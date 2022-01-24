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
struct TYPE_8__ {scalar_t__ dts_nretained; } ;
typedef  TYPE_2__ dtrace_state_t ;
struct TYPE_9__ {TYPE_1__* dten_vstate; struct TYPE_9__* dten_next; } ;
typedef  TYPE_3__ dtrace_enabling_t ;
struct TYPE_7__ {TYPE_2__* dtvs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 TYPE_3__* dtrace_retained ; 

__attribute__((used)) static void
FUNC3(dtrace_state_t *state)
{
	dtrace_enabling_t *enab, *next;

	FUNC1(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

	/*
	 * Iterate over all retained enablings, destroy the enablings retained
	 * for the specified state.
	 */
	for (enab = dtrace_retained; enab != NULL; enab = next) {
		next = enab->dten_next;

		/*
		 * dtvs_state can only be NULL for helper enablings -- and
		 * helper enablings can't be retained.
		 */
		FUNC0(enab->dten_vstate->dtvs_state != NULL);

		if (enab->dten_vstate->dtvs_state == state) {
			FUNC0(state->dts_nretained > 0);
			FUNC2(enab);
		}
	}

	FUNC0(state->dts_nretained == 0);
}