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
struct modctl {scalar_t__ mod_loadcnt; int /*<<< orphan*/  mod_loaded; int /*<<< orphan*/  mod_nenabled; } ;
struct TYPE_2__ {scalar_t__ sdp_loadcnt; struct TYPE_2__* sdp_next; scalar_t__ sdp_patchpoint; int /*<<< orphan*/  sdp_savedval; struct modctl* sdp_ctl; } ;
typedef  TYPE_1__ sdt_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
	sdt_probe_t *sdp = parg;
	struct modctl *ctl = sdp->sdp_ctl;

	ctl->mod_nenabled--;

	if (!ctl->mod_loaded || ctl->mod_loadcnt != sdp->sdp_loadcnt)
		goto err;

	while (sdp != NULL) {
		(void)FUNC2( (vm_offset_t)&sdp->sdp_savedval, (vm_offset_t)sdp->sdp_patchpoint, 
		                       (vm_size_t)sizeof(sdp->sdp_savedval));
		/*
		 * Make the patched instruction visible via a data + instruction
		 * cache flush on platforms that need it
		 */
		FUNC0((vm_offset_t)sdp->sdp_patchpoint,(vm_size_t)sizeof(sdp->sdp_savedval), 0);
		FUNC1((vm_offset_t)sdp->sdp_patchpoint,(vm_size_t)sizeof(sdp->sdp_savedval), 0);
		sdp = sdp->sdp_next;
	}

err:
	;
}