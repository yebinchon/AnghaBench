#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__** dts_aggregations; int /*<<< orphan*/  dts_aggid_arena; } ;
typedef  TYPE_1__ dtrace_state_t ;
struct TYPE_9__ {TYPE_1__* dte_state; } ;
typedef  TYPE_2__ dtrace_ecb_t ;
struct TYPE_10__ {int dtag_id; } ;
typedef  TYPE_3__ dtrace_aggregation_t ;
typedef  int dtrace_aggid_t ;
struct TYPE_11__ {int /*<<< orphan*/  dta_kind; } ;
typedef  TYPE_4__ dtrace_action_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void
FUNC4(dtrace_ecb_t *ecb, dtrace_action_t *act)
{
	dtrace_aggregation_t *agg = (dtrace_aggregation_t *)act;
	dtrace_state_t *state = ecb->dte_state;
	dtrace_aggid_t aggid = agg->dtag_id;

	FUNC0(FUNC1(act->dta_kind));
	FUNC3(state->dts_aggid_arena, (void *)(uintptr_t)aggid, 1);

	FUNC0(state->dts_aggregations[aggid - 1] == agg);
	state->dts_aggregations[aggid - 1] = NULL;

	FUNC2(agg, sizeof (dtrace_aggregation_t));
}