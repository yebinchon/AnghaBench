#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int (* dtps_enable ) (void*,dtrace_id_t,void*) ;int /*<<< orphan*/  (* dtps_destroy ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {scalar_t__ dtpv_ecb_count; int /*<<< orphan*/  dtpv_name; struct TYPE_17__* dtpv_next; int /*<<< orphan*/  dtpv_arg; TYPE_2__ dtpv_pops; int /*<<< orphan*/  dtpv_probe_count; int /*<<< orphan*/  dtpv_defunct; } ;
typedef  TYPE_3__ dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
struct TYPE_18__ {int dtpr_id; int /*<<< orphan*/  dtpr_name; int /*<<< orphan*/  dtpr_func; int /*<<< orphan*/  dtpr_mod; int /*<<< orphan*/  dtpr_arg; struct TYPE_18__* dtpr_nextmod; TYPE_3__* dtpr_provider; } ;
typedef  TYPE_4__ dtrace_probe_t ;
struct TYPE_15__ {scalar_t__ dts_necbs; } ;
struct TYPE_14__ {TYPE_1__* dta_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__** FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 TYPE_11__ dtrace_anon ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/  dtrace_byfunc ; 
 int /*<<< orphan*/  dtrace_bymod ; 
 int /*<<< orphan*/  dtrace_byname ; 
 int /*<<< orphan*/  dtrace_byprov ; 
 int /*<<< orphan*/ * dtrace_devi ; 
 scalar_t__ dtrace_enable_nullop ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 scalar_t__ dtrace_opens ; 
 int /*<<< orphan*/  dtrace_probe_t_zone ; 
 int /*<<< orphan*/ ** dtrace_probes ; 
 TYPE_3__* dtrace_provider ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mod_lock ; 
 int /*<<< orphan*/  FUNC10 (char*,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_4__*) ; 

int
FUNC14(dtrace_provider_id_t id)
{
	dtrace_provider_t *old = (dtrace_provider_t *)id;
	dtrace_provider_t *prev = NULL;
	int self = 0;
	dtrace_probe_t *probe, *first = NULL, *next = NULL;
	dtrace_probe_t template = {
		.dtpr_provider = old
	};

	if (old->dtpv_pops.dtps_enable ==
	    (int (*)(void *, dtrace_id_t, void *))dtrace_enable_nullop) {
		/*
		 * If DTrace itself is the provider, we're called with locks
		 * already held.
		 */
		FUNC0(old == dtrace_provider);
		FUNC0(dtrace_devi != NULL);
		FUNC2(&dtrace_provider_lock, LCK_MTX_ASSERT_OWNED);
		FUNC2(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
		self = 1;

		if (dtrace_provider->dtpv_next != NULL) {
			/*
			 * There's another provider here; return failure.
			 */
			return (EBUSY);
		}
	} else {
		FUNC8(&dtrace_provider_lock);
		FUNC8(&mod_lock);
		FUNC8(&dtrace_lock);
	}

	/*
	 * If anyone has /dev/dtrace open, or if there are anonymous enabled
	 * probes, we refuse to let providers slither away, unless this
	 * provider has already been explicitly invalidated.
	 */
	if (!old->dtpv_defunct &&
	    (dtrace_opens || (dtrace_anon.dta_state != NULL &&
	    dtrace_anon.dta_state->dts_necbs > 0))) {
		if (!self) {
			FUNC9(&dtrace_lock);
			FUNC9(&mod_lock);
			FUNC9(&dtrace_provider_lock);
		}
		return (EBUSY);
	}

	/*
	 * Attempt to destroy the probes associated with this provider.
	 */
	if (old->dtpv_ecb_count!=0) {
		/*
		 * We have at least one ECB; we can't remove this provider.
		 */
		if (!self) {
			FUNC9(&dtrace_lock);
			FUNC9(&mod_lock);
			FUNC9(&dtrace_provider_lock);
		}
		return (EBUSY);
	}

	/*
	 * All of the probes for this provider are disabled; we can safely
	 * remove all of them from their hash chains and from the probe array.
	 */
	for (probe = FUNC3(dtrace_byprov, &template); probe != NULL;
	    probe = *(FUNC1(dtrace_byprov, probe))) {
		if (probe->dtpr_provider != old)
			continue;

		dtrace_probes[probe->dtpr_id - 1] = NULL;
		old->dtpv_probe_count--;

		FUNC4(dtrace_bymod, probe);
		FUNC4(dtrace_byfunc, probe);
		FUNC4(dtrace_byname, probe);

		if (first == NULL) {
			first = probe;
			probe->dtpr_nextmod = NULL;
		} else {
			/*
			 * Use nextmod as the chain of probes to remove
			 */
			probe->dtpr_nextmod = first;
			first = probe;
		}
	}

	for (probe = first; probe != NULL; probe = next) {
		next = probe->dtpr_nextmod;
		FUNC4(dtrace_byprov, probe);
	}

	/*
	 * The provider's probes have been removed from the hash chains and
	 * from the probe array.  Now issue a dtrace_sync() to be sure that
	 * everyone has cleared out from any probe array processing.
	 */
	FUNC6();

	for (probe = first; probe != NULL; probe = next) {
		next = probe->dtpr_nextmod;

		old->dtpv_pops.dtps_destroy(old->dtpv_arg, probe->dtpr_id,
		    probe->dtpr_arg);
		FUNC5(probe->dtpr_mod);
		FUNC5(probe->dtpr_func);
		FUNC5(probe->dtpr_name);
		FUNC12(dtrace_arena, (void *)(uintptr_t)(probe->dtpr_id), 1);
		FUNC13(dtrace_probe_t_zone, probe);
	}

	if ((prev = dtrace_provider) == old) {
		FUNC0(self || dtrace_devi == NULL);
		FUNC0(old->dtpv_next == NULL || dtrace_devi == NULL);
		dtrace_provider = old->dtpv_next;
	} else {
		while (prev != NULL && prev->dtpv_next != old)
			prev = prev->dtpv_next;

		if (prev == NULL) {
			FUNC10("attempt to unregister non-existent "
			    "dtrace provider %p\n", (void *)id);
		}

		prev->dtpv_next = old->dtpv_next;
	}

	FUNC5(old->dtpv_name);

	if (!self) {
		FUNC9(&dtrace_lock);
		FUNC9(&mod_lock);
		FUNC9(&dtrace_provider_lock);
	}

	FUNC7(old, sizeof (dtrace_provider_t));

	return (0);
}