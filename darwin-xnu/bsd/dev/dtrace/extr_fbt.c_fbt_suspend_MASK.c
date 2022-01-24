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
struct modctl {scalar_t__ mod_nenabled; scalar_t__ mod_loadcnt; int /*<<< orphan*/  mod_loaded; } ;
struct TYPE_2__ {scalar_t__ fbtp_loadcnt; scalar_t__ fbtp_savedval; scalar_t__ fbtp_currentval; scalar_t__ fbtp_patchpoint; struct modctl* fbtp_ctl; struct TYPE_2__* fbtp_next; } ;
typedef  TYPE_1__ fbt_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
	fbt_probe_t *fbt = parg;
	struct modctl *ctl = NULL;

	for (; fbt != NULL; fbt = fbt->fbtp_next) {
	    ctl = fbt->fbtp_ctl;

	    FUNC0(ctl->mod_nenabled > 0);
	    if (!ctl->mod_loaded || (ctl->mod_loadcnt != fbt->fbtp_loadcnt))
		continue;

	    (void)FUNC4( (vm_offset_t)&fbt->fbtp_savedval, (vm_offset_t)fbt->fbtp_patchpoint,
								sizeof(fbt->fbtp_savedval));

		/*
		 * Make the patched instruction visible via a data + instruction
		 * cache flush for the platforms that need it
		 */
		FUNC2((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_savedval), 0);
		FUNC3((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_savedval), 0);

		fbt->fbtp_currentval = fbt->fbtp_savedval;
	}

	FUNC1();
}