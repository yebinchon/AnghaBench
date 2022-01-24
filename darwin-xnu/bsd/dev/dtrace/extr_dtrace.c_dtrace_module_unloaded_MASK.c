#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct modctl {scalar_t__ mod_address; int /*<<< orphan*/  mod_modname; struct modctl* mod_next; scalar_t__ mod_size; scalar_t__ mod_loaded; } ;
struct kmod_info {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* dtps_destroy ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  dtpv_arg; TYPE_1__ dtpv_pops; int /*<<< orphan*/  dtpv_probe_count; } ;
typedef  TYPE_2__ dtrace_provider_t ;
struct TYPE_11__ {int dtpr_id; int /*<<< orphan*/  dtpr_name; int /*<<< orphan*/  dtpr_func; int /*<<< orphan*/  dtpr_mod; int /*<<< orphan*/  dtpr_arg; TYPE_2__* dtpr_provider; struct TYPE_11__* dtpr_nextmod; int /*<<< orphan*/ * dtpr_ecb; } ;
typedef  TYPE_3__ dtrace_probe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CE_WARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtrace_arena ; 
 int /*<<< orphan*/ * dtrace_byfunc ; 
 int /*<<< orphan*/ * dtrace_bymod ; 
 int /*<<< orphan*/ * dtrace_byname ; 
 int /*<<< orphan*/ * dtrace_byprov ; 
 scalar_t__ dtrace_err_verbose ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 struct modctl* dtrace_modctl_list ; 
 struct modctl* FUNC4 (struct kmod_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct modctl*) ; 
 int /*<<< orphan*/  dtrace_probe_t_zone ; 
 TYPE_3__** dtrace_probes ; 
 int /*<<< orphan*/  dtrace_provider_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mod_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC13(struct kmod_info *kmod)
{
	dtrace_probe_t template, *probe, *first, *next;
	dtrace_provider_t *prov;
        struct modctl *ctl = NULL;
	struct modctl *syncctl = NULL;
	struct modctl *nextsyncctl = NULL;
	int syncmode = 0;
	
        FUNC8(&dtrace_provider_lock);
	FUNC8(&mod_lock);
	FUNC8(&dtrace_lock);

	if (kmod == NULL) {
	    syncmode = 1;
	}
	else {
	    ctl = FUNC4(kmod);
	    if (ctl == NULL)
	    {
		FUNC9(&dtrace_lock);
		FUNC9(&mod_lock);
		FUNC9(&dtrace_provider_lock);
		return (-1);
	    }
	    ctl->mod_loaded = 0;
	    ctl->mod_address = 0;
	    ctl->mod_size = 0;
	}
	
	if (dtrace_bymod == NULL) {
		/*
		 * The DTrace module is loaded (obviously) but not attached;
		 * we don't have any work to do.
		 */
	         if (ctl != NULL)
			 (void)FUNC5(ctl);
		 FUNC9(&dtrace_lock);
		 FUNC9(&mod_lock);
		 FUNC9(&dtrace_provider_lock);
		 return(0);
	}

	/* Syncmode set means we target and traverse entire modctl list. */
        if (syncmode)
	    nextsyncctl = dtrace_modctl_list;

syncloop:
	if (syncmode)
	{
	    /* find a stale modctl struct */
	    for (syncctl = nextsyncctl; syncctl != NULL; syncctl=syncctl->mod_next) {
		if (syncctl->mod_address == 0)
		    break;
	    }
	    if (syncctl==NULL)
	    {
		/* We have no more work to do */
		FUNC9(&dtrace_lock);
		FUNC9(&mod_lock);
		FUNC9(&dtrace_provider_lock);
		return(0);
	    }
	    else {
		/* keep track of next syncctl in case this one is removed */
		nextsyncctl = syncctl->mod_next;
		ctl = syncctl;
	    }
	}

	template.dtpr_mod = ctl->mod_modname;
	
	for (probe = first = FUNC2(dtrace_bymod, &template);
	    probe != NULL; probe = probe->dtpr_nextmod) {
	        if (probe->dtpr_ecb != NULL) {
			/*
			 * This shouldn't _actually_ be possible -- we're
			 * unloading a module that has an enabled probe in it.
			 * (It's normally up to the provider to make sure that
			 * this can't happen.)  However, because dtps_enable()
			 * doesn't have a failure mode, there can be an
			 * enable/unload race.  Upshot:  we don't want to
			 * assert, but we're not going to disable the
			 * probe, either.
			 */


		        if (syncmode) {
			    /* We're syncing, let's look at next in list */
			    goto syncloop;
			}

			FUNC9(&dtrace_lock);
			FUNC9(&mod_lock);
			FUNC9(&dtrace_provider_lock);
		    
			if (dtrace_err_verbose) {
				FUNC1(CE_WARN, "unloaded module '%s' had "
				    "enabled probes", ctl->mod_modname);
			}
			return(-1);
		}
	}

	probe = first;

	for (first = NULL; probe != NULL; probe = next) {
		FUNC0(dtrace_probes[probe->dtpr_id - 1] == probe);

		dtrace_probes[probe->dtpr_id - 1] = NULL;
		probe->dtpr_provider->dtpv_probe_count--;					

		next = probe->dtpr_nextmod;
		FUNC3(dtrace_byprov, probe);
		FUNC3(dtrace_bymod, probe);
		FUNC3(dtrace_byfunc, probe);
		FUNC3(dtrace_byname, probe);

		if (first == NULL) {
			first = probe;
			probe->dtpr_nextmod = NULL;
		} else {
			probe->dtpr_nextmod = first;
			first = probe;
		}
	}

	/*
	 * We've removed all of the module's probes from the hash chains and
	 * from the probe array.  Now issue a dtrace_sync() to be sure that
	 * everyone has cleared out from any probe array processing.
	 */
	FUNC7();

	for (probe = first; probe != NULL; probe = first) {
		first = probe->dtpr_nextmod;
		prov = probe->dtpr_provider;
		prov->dtpv_pops.dtps_destroy(prov->dtpv_arg, probe->dtpr_id,
		    probe->dtpr_arg);
		FUNC6(probe->dtpr_mod);
		FUNC6(probe->dtpr_func);
		FUNC6(probe->dtpr_name);
		FUNC11(dtrace_arena, (void *)(uintptr_t)probe->dtpr_id, 1);

		FUNC12(dtrace_probe_t_zone, probe);
	}

	FUNC5(ctl);
	
	if (syncmode)
	    goto syncloop;

	FUNC9(&dtrace_lock);
	FUNC9(&mod_lock);
	FUNC9(&dtrace_provider_lock);

	return(0);
}