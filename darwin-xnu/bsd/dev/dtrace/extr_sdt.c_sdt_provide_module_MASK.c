#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct modctl {int /*<<< orphan*/  mod_flags; } ;
struct TYPE_3__ {struct TYPE_3__* sdpd_next; scalar_t__ sdpd_func; scalar_t__ sdpd_name; } ;
typedef  TYPE_1__ sdt_probedesc_t ;
struct TYPE_4__ {TYPE_1__* sdt_probes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DTRACE_KERNEL_SYMBOLS_NEVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  MODCTL_SDT_PROBES_PROVIDED ; 
 scalar_t__ FUNC2 (struct modctl*) ; 
 scalar_t__ FUNC3 (struct modctl*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ dtrace_kernel_symbol_mode ; 
 int /*<<< orphan*/  g_sdt_kernctl ; 
 TYPE_2__ g_sdt_mach_module ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  mod_lock ; 
 int FUNC6 (scalar_t__) ; 

void
FUNC7(void *arg, struct modctl *ctl)
{
#pragma unused(arg)
	FUNC0(ctl != NULL);
	FUNC0(dtrace_kernel_symbol_mode != DTRACE_KERNEL_SYMBOLS_NEVER);
	FUNC1(&mod_lock, LCK_MTX_ASSERT_OWNED);
	
	if (FUNC3(ctl))
		return;
		
	if (FUNC2(ctl)) {
		FUNC4(arg, &g_sdt_kernctl);
		
		sdt_probedesc_t *sdpd = g_sdt_mach_module.sdt_probes;
		while (sdpd) {
			sdt_probedesc_t *this_sdpd = sdpd;
			FUNC5((void *)sdpd->sdpd_name, FUNC6(sdpd->sdpd_name) + 1);
			FUNC5((void *)sdpd->sdpd_func, FUNC6(sdpd->sdpd_func) + 1);
			sdpd = sdpd->sdpd_next;
			FUNC5((void *)this_sdpd, sizeof(sdt_probedesc_t));
		}
		g_sdt_mach_module.sdt_probes = NULL;
	} else {
		/*
		 * APPLE NOTE:  sdt probes for kexts not yet implemented
		 */
	}
	
	/* Need to mark this module as completed */
	ctl->mod_flags |= MODCTL_SDT_PROBES_PROVIDED;
}