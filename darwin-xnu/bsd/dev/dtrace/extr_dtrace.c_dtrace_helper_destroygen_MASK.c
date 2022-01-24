#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_9__ {TYPE_2__* p_dtrace_helpers; } ;
typedef  TYPE_1__ proc_t ;
typedef  int /*<<< orphan*/  dtrace_vstate_t ;
struct TYPE_10__ {int dthps_generation; size_t dthps_nprovs; TYPE_3__** dthps_provs; TYPE_4__** dthps_actions; int /*<<< orphan*/  dthps_vstate; } ;
typedef  TYPE_2__ dtrace_helpers_t ;
struct TYPE_11__ {int dthp_generation; int /*<<< orphan*/  dthp_prov; } ;
typedef  TYPE_3__ dtrace_helper_provider_t ;
struct TYPE_12__ {int dtha_generation; struct TYPE_12__* dtha_next; } ;
typedef  TYPE_4__ dtrace_helper_action_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DTRACE_NHELPER_ACTIONS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/ * dtrace_deferred_pid ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_meta_lock ; 
 int /*<<< orphan*/ * dtrace_meta_pid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(proc_t* p, int gen)
{
	dtrace_helpers_t *help = p->p_dtrace_helpers;
	dtrace_vstate_t *vstate;
	uint_t i;

	FUNC1(&dtrace_meta_lock, LCK_MTX_ASSERT_OWNED);
	FUNC1(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

	if (help == NULL || gen > help->dthps_generation)
		return (EINVAL);

	vstate = &help->dthps_vstate;

	for (i = 0; i < DTRACE_NHELPER_ACTIONS; i++) {
		dtrace_helper_action_t *last = NULL, *h, *next;

		for (h = help->dthps_actions[i]; h != NULL; h = next) {
			next = h->dtha_next;

			if (h->dtha_generation == gen) {
				if (last != NULL) {
					last->dtha_next = next;
				} else {
					help->dthps_actions[i] = next;
				}

				FUNC2(h, vstate);
			} else {
				last = h;
			}
		}
	}

	/*
	 * Interate until we've cleared out all helper providers with the
	 * given generation number.
	 */
	for (;;) {
		dtrace_helper_provider_t *prov = NULL;

		/*
		 * Look for a helper provider with the right generation. We
		 * have to start back at the beginning of the list each time
		 * because we drop dtrace_lock. It's unlikely that we'll make
		 * more than two passes.
		 */
		for (i = 0; i < help->dthps_nprovs; i++) {
			prov = help->dthps_provs[i];

			if (prov->dthp_generation == gen)
				break;
		}

		/*
		 * If there were no matches, we're done.
		 */
		if (i == help->dthps_nprovs)
			break;

		/*
		 * Move the last helper provider into this slot.
		 */
		help->dthps_nprovs--;
		help->dthps_provs[i] = help->dthps_provs[help->dthps_nprovs];
		help->dthps_provs[help->dthps_nprovs] = NULL;

		FUNC6(&dtrace_lock);

		/*
		 * If we have a meta provider, remove this helper provider.
		 */
		if (dtrace_meta_pid != NULL) {
			FUNC0(dtrace_deferred_pid == NULL);
			FUNC4(&prov->dthp_prov,
			    p);
		}

		FUNC3(prov);

		FUNC5(&dtrace_lock);
	}

	return (0);
}