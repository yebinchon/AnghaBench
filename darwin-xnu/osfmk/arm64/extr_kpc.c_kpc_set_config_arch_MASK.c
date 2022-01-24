#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint32_t ;
struct kpc_config_remote {struct kpc_config_remote* configv; int /*<<< orphan*/  pmc_mask; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct kpc_config_remote*) ; 
 int /*<<< orphan*/  FUNC1 (struct kpc_config_remote) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kpc_config_remote*) ; 
 int /*<<< orphan*/  kpc_config_sync ; 
 int kpc_configured ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kpc_set_config_xcall ; 
 int /*<<< orphan*/  whitelist_disabled ; 

int
FUNC4(struct kpc_config_remote *mp_config)
{
	uint32_t count = FUNC3(mp_config->pmc_mask);

	FUNC0(mp_config);
	FUNC0(mp_config->configv);

	/* check config against whitelist for external devs */
	for (uint32_t i = 0; i < count; ++i) {
		if (!whitelist_disabled && !FUNC1(mp_config->configv[i])) {
			return EPERM;
		}
	}

	/* dispatch to all CPUs */
	FUNC2(&kpc_config_sync, TRUE, kpc_set_config_xcall, mp_config);

	kpc_configured = 1;

	return 0;
}