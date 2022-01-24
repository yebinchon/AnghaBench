#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module {int /*<<< orphan*/  sdt_nprobes; } ;
struct modctl {scalar_t__ mod_loadcnt; scalar_t__ mod_mp; scalar_t__ mod_loaded; } ;
struct TYPE_4__ {scalar_t__ sdp_loadcnt; int sdp_namelen; struct TYPE_4__* sdp_next; struct TYPE_4__* sdp_name; struct TYPE_4__* sdp_hashnext; int /*<<< orphan*/  sdp_patchpoint; struct modctl* sdp_ctl; } ;
typedef  TYPE_1__ sdt_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__** sdt_probetab ; 

__attribute__((used)) static void
FUNC3(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
	sdt_probe_t *sdp = parg, *old, *last, *hash;
	int ndx;

#if !defined(__APPLE__)
	/*
	 * APPLE NOTE:  sdt probes for kexts not yet implemented
	 */
	struct modctl *ctl = sdp->sdp_ctl;

	if (ctl != NULL && ctl->mod_loadcnt == sdp->sdp_loadcnt) {
		if ((ctl->mod_loadcnt == sdp->sdp_loadcnt &&
		    ctl->mod_loaded)) {
			((struct module *)(ctl->mod_mp))->sdt_nprobes--;
		}
	}
#endif /* __APPLE__ */

	while (sdp != NULL) {
		old = sdp;

		/*
		 * Now we need to remove this probe from the sdt_probetab.
		 */
		ndx = FUNC1(sdp->sdp_patchpoint);
		last = NULL;
		hash = sdt_probetab[ndx];

		while (hash != sdp) {
			FUNC0(hash != NULL);
			last = hash;
			hash = hash->sdp_hashnext;
		}

		if (last != NULL) {
			last->sdp_hashnext = sdp->sdp_hashnext;
		} else {
			sdt_probetab[ndx] = sdp->sdp_hashnext;
		}

		FUNC2(sdp->sdp_name, sdp->sdp_namelen);
		sdp = sdp->sdp_next;
		FUNC2(old, sizeof (sdt_probe_t));
	}
}