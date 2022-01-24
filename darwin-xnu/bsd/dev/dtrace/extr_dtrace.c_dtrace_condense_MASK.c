#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int (* dtps_enable ) (void*,dtrace_id_t,void*) ;int /*<<< orphan*/  (* dtps_destroy ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  dtpv_arg; TYPE_1__ dtpv_pops; int /*<<< orphan*/  dtpv_probe_count; } ;
typedef  TYPE_2__ dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
struct TYPE_12__ {int dtpr_id; struct TYPE_12__* dtpr_nextmod; int /*<<< orphan*/  dtpr_name; int /*<<< orphan*/  dtpr_func; int /*<<< orphan*/  dtpr_mod; int /*<<< orphan*/  dtpr_arg; int /*<<< orphan*/ * dtpr_ecb; TYPE_2__* dtpr_provider; } ;
typedef  TYPE_3__ dtrace_probe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__** FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/  dtrace_byfunc ; 
 int /*<<< orphan*/  dtrace_bymod ; 
 int /*<<< orphan*/  dtrace_byname ; 
 int /*<<< orphan*/  dtrace_byprov ; 
 scalar_t__ dtrace_enable_nullop ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_probe_t_zone ; 
 int /*<<< orphan*/ ** dtrace_probes ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 

int
FUNC10(dtrace_provider_id_t id)
{
	dtrace_provider_t *prov = (dtrace_provider_t *)id;
	dtrace_probe_t *probe, *first = NULL;
	dtrace_probe_t template = {
		.dtpr_provider = prov
	};

	/*
	 * Make sure this isn't the dtrace provider itself.
	 */
	FUNC0(prov->dtpv_pops.dtps_enable !=
	  (int (*)(void *, dtrace_id_t, void *))dtrace_enable_nullop);

	FUNC5(&dtrace_provider_lock);
	FUNC5(&dtrace_lock);

	/*
	 * Attempt to destroy the probes associated with this provider.
	 */
	for (probe = FUNC2(dtrace_byprov, &template); probe != NULL;
	    probe = *(FUNC1(dtrace_byprov, probe))) {

		if (probe->dtpr_provider != prov)
			continue;

		if (probe->dtpr_ecb != NULL)
			continue;

		dtrace_probes[probe->dtpr_id - 1] = NULL;
		prov->dtpv_probe_count--;

		FUNC3(dtrace_bymod, probe);
		FUNC3(dtrace_byfunc, probe);
		FUNC3(dtrace_byname, probe);

		prov->dtpv_pops.dtps_destroy(prov->dtpv_arg, probe->dtpr_id,
		    probe->dtpr_arg);
		FUNC4(probe->dtpr_mod);
		FUNC4(probe->dtpr_func);
		FUNC4(probe->dtpr_name);
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

	for (probe = first; probe != NULL; probe = first) {
		first = probe->dtpr_nextmod;
		FUNC3(dtrace_byprov, probe);
		FUNC8(dtrace_arena, (void *)((uintptr_t)probe->dtpr_id), 1);
		FUNC9(dtrace_probe_t_zone, probe);
	}

	FUNC6(&dtrace_lock);
	FUNC6(&dtrace_provider_lock);

	return (0);
}