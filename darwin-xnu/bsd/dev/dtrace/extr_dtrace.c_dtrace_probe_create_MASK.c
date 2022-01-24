#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dtpv_probe_count; } ;
typedef  TYPE_1__ dtrace_provider_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
struct TYPE_13__ {int dtpr_id; int dtpr_aframes; TYPE_1__* dtpr_provider; void* dtpr_arg; void* dtpr_name; void* dtpr_func; void* dtpr_mod; scalar_t__ dtpr_gen; } ;
typedef  TYPE_2__ dtrace_probe_t ;
typedef  int dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int VM_BESTFIT ; 
 int VM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__**,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/  dtrace_byfunc ; 
 int /*<<< orphan*/  dtrace_bymod ; 
 int /*<<< orphan*/  dtrace_byname ; 
 int /*<<< orphan*/  dtrace_byprov ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int dtrace_nprobes ; 
 int /*<<< orphan*/  dtrace_probe_t_zone ; 
 int /*<<< orphan*/  dtrace_probegen ; 
 TYPE_2__** dtrace_probes ; 
 TYPE_1__* dtrace_provider ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,size_t) ; 
 TYPE_2__** FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ) ; 

dtrace_id_t
FUNC14(dtrace_provider_id_t prov, const char *mod,
    const char *func, const char *name, int aframes, void *arg)
{
	dtrace_probe_t *probe, **probes;
	dtrace_provider_t *provider = (dtrace_provider_t *)prov;
	dtrace_id_t id;

	if (provider == dtrace_provider) {
		FUNC1(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
	} else {
		FUNC10(&dtrace_lock);
	}

	id = (dtrace_id_t)(uintptr_t)FUNC12(dtrace_arena, 1,
	    VM_BESTFIT | VM_SLEEP);

	probe = FUNC13(dtrace_probe_t_zone);
	FUNC3(probe, sizeof (dtrace_probe_t));

	probe->dtpr_id = id;
	probe->dtpr_gen = dtrace_probegen++;
	probe->dtpr_mod = FUNC6(mod);
	probe->dtpr_func = FUNC6(func);
	probe->dtpr_name = FUNC6(name);
	probe->dtpr_arg = arg;
	probe->dtpr_aframes = aframes;
	probe->dtpr_provider = provider;

	FUNC4(dtrace_byprov, probe);
	FUNC4(dtrace_bymod, probe);
	FUNC4(dtrace_byfunc, probe);
	FUNC4(dtrace_byname, probe);

	if (id - 1 >= (dtrace_id_t)dtrace_nprobes) {
		size_t osize = dtrace_nprobes * sizeof (dtrace_probe_t *);
		size_t nsize = osize << 1;

		if (nsize == 0) {
			FUNC0(osize == 0);
			FUNC0(dtrace_probes == NULL);
			nsize = sizeof (dtrace_probe_t *);
		}

		probes = FUNC9(nsize, KM_SLEEP);

		if (dtrace_probes == NULL) {
			FUNC0(osize == 0);
			dtrace_probes = probes;
			dtrace_nprobes = 1;
		} else {
			dtrace_probe_t **oprobes = dtrace_probes;

			FUNC2(oprobes, probes, osize);
			FUNC5();
			dtrace_probes = probes;

			FUNC7();

			/*
			 * All CPUs are now seeing the new probes array; we can
			 * safely free the old array.
			 */
			FUNC8(oprobes, osize);
			dtrace_nprobes <<= 1;
		}

		FUNC0(id - 1 < (dtrace_id_t)dtrace_nprobes);
	}

	FUNC0(dtrace_probes[id - 1] == NULL);
	dtrace_probes[id - 1] = probe;
	provider->dtpv_probe_count++;	

	if (provider != dtrace_provider)
		FUNC11(&dtrace_lock);

	return (id);
}