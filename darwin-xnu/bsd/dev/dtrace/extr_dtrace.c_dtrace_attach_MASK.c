#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_state_t ;
typedef  scalar_t__ dtrace_provider_id_t ;
typedef  int /*<<< orphan*/  dtrace_enabling_t ;
typedef  int /*<<< orphan*/  dtrace_dstate_percpu_t ;
typedef  int /*<<< orphan*/  dev_info_t ;
typedef  int /*<<< orphan*/  cpu_setup_func_t ;
struct TYPE_2__ {int /*<<< orphan*/  dta_beganon; int /*<<< orphan*/ * dta_enabling; int /*<<< orphan*/ * dta_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CE_WARN ; 
 int DDI_SUCCESS ; 
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_KERNEL ; 
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE ; 
 int /*<<< orphan*/  DTRACE_PRIV_NONE ; 
 int /*<<< orphan*/  DTRACE_STATE_ALIGN ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ NCPU ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int VMC_IDENTIFIER ; 
 int VM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cpu_lock ; 
 int /*<<< orphan*/  dtpr_func ; 
 int /*<<< orphan*/  dtpr_mod ; 
 int /*<<< orphan*/  dtpr_name ; 
 int /*<<< orphan*/  dtpr_nextfunc ; 
 int /*<<< orphan*/  dtpr_nextmod ; 
 int /*<<< orphan*/  dtpr_nextname ; 
 int /*<<< orphan*/  dtpr_nextprov ; 
 int /*<<< orphan*/  dtpr_prevfunc ; 
 int /*<<< orphan*/  dtpr_prevmod ; 
 int /*<<< orphan*/  dtpr_prevname ; 
 int /*<<< orphan*/  dtpr_prevprov ; 
 TYPE_1__ dtrace_anon ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  dtrace_arena ; 
 void* dtrace_byfunc ; 
 void* dtrace_bymod ; 
 void* dtrace_byname ; 
 void* dtrace_byprov ; 
 int /*<<< orphan*/  dtrace_cpu_init ; 
 scalar_t__ dtrace_cpu_setup ; 
 int /*<<< orphan*/  dtrace_cpu_setup_initial ; 
 void* dtrace_cpustart_fini ; 
 void* dtrace_cpustart_init ; 
 void* dtrace_debugger_fini ; 
 void* dtrace_debugger_init ; 
 int /*<<< orphan*/ * dtrace_devi ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtrace_helpers_cleanup ; 
 int /*<<< orphan*/  dtrace_helpers_destroy ; 
 int /*<<< orphan*/  dtrace_helpers_duplicate ; 
 int /*<<< orphan*/  dtrace_helpers_fork ; 
 int /*<<< orphan*/ * dtrace_helptrace_buffer ; 
 int /*<<< orphan*/  dtrace_helptrace_bufsize ; 
 scalar_t__ dtrace_helptrace_enabled ; 
 scalar_t__ dtrace_helptrace_next ; 
 scalar_t__ dtrace_kernel_symbol_mode ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_modload ; 
 int /*<<< orphan*/  dtrace_module_loaded ; 
 int /*<<< orphan*/  dtrace_module_unloaded ; 
 int /*<<< orphan*/  dtrace_modunload ; 
 void* FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_probe_t ; 
 void* dtrace_probeid_begin ; 
 void* dtrace_probeid_end ; 
 void* dtrace_probeid_error ; 
 int /*<<< orphan*/ * dtrace_provider ; 
 int /*<<< orphan*/  dtrace_provider_attr ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/  dtrace_provider_ops ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 void* dtrace_resume ; 
 int dtrace_retain_max ; 
 int /*<<< orphan*/ * dtrace_retained ; 
 int /*<<< orphan*/  dtrace_state_cache ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_strkey_deref_offset ; 
 int /*<<< orphan*/  dtrace_strkey_probe_provider ; 
 void* dtrace_suspend ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtrace_toxrange_add ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC18(dev_info_t *devi)
{
	dtrace_provider_id_t id;
	dtrace_state_t *state = NULL;
	dtrace_enabling_t *enab;

	FUNC13(&cpu_lock);
	FUNC13(&dtrace_provider_lock);
	FUNC13(&dtrace_lock);

	/* Darwin uses BSD cloning device driver to automagically obtain minor device number. */
	dtrace_devi = devi;

	dtrace_modload = dtrace_module_loaded;
	dtrace_modunload = dtrace_module_unloaded;
	dtrace_cpu_init = dtrace_cpu_setup_initial;
	dtrace_helpers_cleanup = dtrace_helpers_destroy;
	dtrace_helpers_fork = dtrace_helpers_duplicate;
	dtrace_cpustart_init = dtrace_suspend;
	dtrace_cpustart_fini = dtrace_resume;
	dtrace_debugger_init = dtrace_suspend;
	dtrace_debugger_fini = dtrace_resume;

	FUNC16((cpu_setup_func_t *)dtrace_cpu_setup, NULL);

	FUNC1(&cpu_lock, LCK_MTX_ASSERT_OWNED);

	dtrace_arena = FUNC17("dtrace", (void *)1, UINT32_MAX, 1,
	    NULL, NULL, NULL, 0, VM_SLEEP | VMC_IDENTIFIER);

	dtrace_state_cache = FUNC11("dtrace_state_cache",
	    sizeof (dtrace_dstate_percpu_t) * (int)NCPU, DTRACE_STATE_ALIGN,
	    NULL, NULL, NULL, NULL, NULL, 0);

	FUNC1(&cpu_lock, LCK_MTX_ASSERT_OWNED);

	dtrace_byprov = FUNC6(dtrace_strkey_probe_provider,
	    0, /* unused */
	    FUNC15(dtrace_probe_t, dtpr_nextprov),
	    FUNC15(dtrace_probe_t, dtpr_prevprov));

	dtrace_bymod = FUNC6(dtrace_strkey_deref_offset,
	    FUNC15(dtrace_probe_t, dtpr_mod),
	    FUNC15(dtrace_probe_t, dtpr_nextmod),
	    FUNC15(dtrace_probe_t, dtpr_prevmod));

	dtrace_byfunc = FUNC6(dtrace_strkey_deref_offset,
	    FUNC15(dtrace_probe_t, dtpr_func),
	    FUNC15(dtrace_probe_t, dtpr_nextfunc),
	    FUNC15(dtrace_probe_t, dtpr_prevfunc));

	dtrace_byname = FUNC6(dtrace_strkey_deref_offset,
	    FUNC15(dtrace_probe_t, dtpr_name),
	    FUNC15(dtrace_probe_t, dtpr_nextname),
	    FUNC15(dtrace_probe_t, dtpr_prevname));

	if (dtrace_retain_max < 1) {
		FUNC2(CE_WARN, "illegal value (%lu) for dtrace_retain_max; "
		    "setting to 1", dtrace_retain_max);
		dtrace_retain_max = 1;
	}

	/*
	 * Now discover our toxic ranges.
	 */
	FUNC10(dtrace_toxrange_add);

	/*
	 * Before we register ourselves as a provider to our own framework,
	 * we would like to assert that dtrace_provider is NULL -- but that's
	 * not true if we were loaded as a dependency of a DTrace provider.
	 * Once we've registered, we can assert that dtrace_provider is our
	 * pseudo provider.
	 */
	(void) FUNC8("dtrace", &dtrace_provider_attr,
	    DTRACE_PRIV_NONE, 0, &dtrace_provider_ops, NULL, &id);

	FUNC0(dtrace_provider != NULL);
	FUNC0((dtrace_provider_id_t)dtrace_provider == id);

#if defined (__x86_64__)
	dtrace_probeid_begin = FUNC7((dtrace_provider_id_t)
	    dtrace_provider, NULL, NULL, "BEGIN", 1, NULL);
	dtrace_probeid_end = FUNC7((dtrace_provider_id_t)
	    dtrace_provider, NULL, NULL, "END", 0, NULL);
	dtrace_probeid_error = FUNC7((dtrace_provider_id_t)
	    dtrace_provider, NULL, NULL, "ERROR", 3, NULL);
#elif (defined(__arm__) || defined(__arm64__))
	dtrace_probeid_begin = dtrace_probe_create((dtrace_provider_id_t)
	    dtrace_provider, NULL, NULL, "BEGIN", 2, NULL);
	dtrace_probeid_end = dtrace_probe_create((dtrace_provider_id_t)
	    dtrace_provider, NULL, NULL, "END", 1, NULL);
	dtrace_probeid_error = dtrace_probe_create((dtrace_provider_id_t)
	    dtrace_provider, NULL, NULL, "ERROR", 4, NULL);
#else
#error Unknown Architecture
#endif

	FUNC3();
	FUNC14(&cpu_lock);

	/*
	 * If DTrace helper tracing is enabled, we need to allocate the
	 * trace buffer and initialize the values.
	 */
	if (dtrace_helptrace_enabled) {
		FUNC0(dtrace_helptrace_buffer == NULL);
		dtrace_helptrace_buffer =
		    FUNC12(dtrace_helptrace_bufsize, KM_SLEEP);
		dtrace_helptrace_next = 0;
	}

	/*
	 * If there are already providers, we must ask them to provide their
	 * probes, and then match any anonymous enabling against them.  Note
	 * that there should be no other retained enablings at this time:
	 * the only retained enablings at this time should be the anonymous
	 * enabling.
	 */
	if (dtrace_anon.dta_enabling != NULL) {
		FUNC0(dtrace_retained == dtrace_anon.dta_enabling);

		/*
		 * APPLE NOTE: if handling anonymous dof, switch symbol modes.
		 */
		if (dtrace_kernel_symbol_mode == DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE) {
			dtrace_kernel_symbol_mode = DTRACE_KERNEL_SYMBOLS_FROM_KERNEL;
		}
		
		FUNC5(NULL);
		state = dtrace_anon.dta_state;

		/*
		 * We couldn't hold cpu_lock across the above call to
		 * dtrace_enabling_provide(), but we must hold it to actually
		 * enable the probes.  We have to drop all of our locks, pick
		 * up cpu_lock, and regain our locks before matching the
		 * retained anonymous enabling.
		 */
		FUNC14(&dtrace_lock);
		FUNC14(&dtrace_provider_lock);

		FUNC13(&cpu_lock);
		FUNC13(&dtrace_provider_lock);
		FUNC13(&dtrace_lock);

		if ((enab = dtrace_anon.dta_enabling) != NULL)
			(void) FUNC4(enab, NULL, NULL);

		FUNC14(&cpu_lock);
	}

	FUNC14(&dtrace_lock);
	FUNC14(&dtrace_provider_lock);

	if (state != NULL) {
		/*
		 * If we created any anonymous state, set it going now.
		 */
		(void) FUNC9(state, &dtrace_anon.dta_beganon);
	}

	return (DDI_SUCCESS);
}