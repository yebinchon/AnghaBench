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
typedef  int /*<<< orphan*/  dtrace_vstate_t ;
struct TYPE_8__ {TYPE_3__** dts_ecbs; int /*<<< orphan*/  dts_vstate; } ;
typedef  TYPE_2__ dtrace_state_t ;
typedef  int /*<<< orphan*/  dtrace_predicate_t ;
typedef  int dtrace_epid_t ;
struct TYPE_9__ {int dte_epid; int /*<<< orphan*/ * dte_predicate; TYPE_1__* dte_probe; int /*<<< orphan*/ * dte_next; TYPE_2__* dte_state; } ;
typedef  TYPE_3__ dtrace_ecb_t ;
struct TYPE_7__ {TYPE_3__* dtpr_ecb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC5(dtrace_ecb_t *ecb)
{
	dtrace_state_t *state = ecb->dte_state;
	dtrace_vstate_t *vstate = &state->dts_vstate;
	dtrace_predicate_t *pred;
	dtrace_epid_t epid = ecb->dte_epid;

	FUNC1(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
	FUNC0(ecb->dte_next == NULL);
	FUNC0(ecb->dte_probe == NULL || ecb->dte_probe->dtpr_ecb != ecb);

	if ((pred = ecb->dte_predicate) != NULL)
		FUNC3(pred, vstate);

	FUNC2(ecb);

	FUNC0(state->dts_ecbs[epid - 1] == ecb);
	state->dts_ecbs[epid - 1] = NULL;

	FUNC4(ecb, sizeof (dtrace_ecb_t));
}