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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct modctl {scalar_t__ mod_loadcnt; int /*<<< orphan*/  mod_nenabled; int /*<<< orphan*/  mod_modname; int /*<<< orphan*/  mod_loaded; } ;
typedef  scalar_t__ perfCallback ;
struct TYPE_2__ {scalar_t__ fbtp_loadcnt; scalar_t__ fbtp_currentval; scalar_t__ fbtp_patchval; scalar_t__ fbtp_patchpoint; int /*<<< orphan*/  fbtp_name; struct modctl* fbtp_ctl; struct TYPE_2__* fbtp_next; } ;
typedef  TYPE_1__ fbt_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_NOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ fbt_perfCallback ; 
 scalar_t__ fbt_verbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ tempDTraceTrapHook ; 

int
FUNC7(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
	fbt_probe_t *fbt = parg;
	struct modctl *ctl = NULL;

    for (; fbt != NULL; fbt = fbt->fbtp_next) {

	ctl = fbt->fbtp_ctl;

	if (!ctl->mod_loaded) {
		if (fbt_verbose) {
			FUNC0(CE_NOTE, "fbt is failing for probe %s "
			    "(module %s unloaded)",
			    fbt->fbtp_name, ctl->mod_modname);
		}

		continue;
	}

	/*
	 * Now check that our modctl has the expected load count.  If it
	 * doesn't, this module must have been unloaded and reloaded -- and
	 * we're not going to touch it.
	 */
	if (ctl->mod_loadcnt != fbt->fbtp_loadcnt) {
		if (fbt_verbose) {
			FUNC0(CE_NOTE, "fbt is failing for probe %s "
			    "(module %s reloaded)",
			    fbt->fbtp_name, ctl->mod_modname);
		}

		continue;
	}

	FUNC1(&tempDTraceTrapHook, NULL, fbt_perfCallback);
	if (tempDTraceTrapHook != (perfCallback)fbt_perfCallback) {
		if (fbt_verbose) {
			FUNC0(CE_NOTE, "fbt_enable is failing for probe %s "
			    "in module %s: tempDTraceTrapHook already occupied.",
			    fbt->fbtp_name, ctl->mod_modname);
		}
		continue;
	}

	if (fbt->fbtp_currentval != fbt->fbtp_patchval) {
#if KASAN
		/* Since dtrace probes can call into KASan and vice versa, things can get
		 * very slow if we have a lot of probes. This call will disable the KASan
		 * fakestack after a threshold of probes is reached. */
		kasan_fakestack_suspend();
#endif

		(void)FUNC6( (vm_offset_t)&fbt->fbtp_patchval, (vm_offset_t)fbt->fbtp_patchpoint,
								sizeof(fbt->fbtp_patchval));
		/*
		 * Make the patched instruction visible via a data + instruction
		 * cache flush for the platforms that need it
		 */
		FUNC3((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_patchval), 0);
		FUNC4((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_patchval), 0);
                fbt->fbtp_currentval = fbt->fbtp_patchval;

		ctl->mod_nenabled++;
	}

    }

    FUNC2();

    return (0);
}