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
typedef  int uint32_t ;
struct kpc_config_remote {int classes; int /*<<< orphan*/  pmc_mask; struct kpc_config_remote* configv; } ;
typedef  struct kpc_config_remote kpc_config_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_RAWPMU_MASK ; 
 scalar_t__ RAWPMU_CONFIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct kpc_config_remote*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kpc_config_sync ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kpc_config_remote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kpc_config_remote*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *vmp_config)
{
	struct kpc_config_remote *mp_config = vmp_config;
	kpc_config_t *new_config = NULL;
	uint32_t classes = 0ULL;

	FUNC0(mp_config);
	FUNC0(mp_config->configv);
	classes = mp_config->classes;
	new_config = mp_config->configv;

	if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
		FUNC3(new_config, mp_config->pmc_mask);
		new_config += FUNC2(mp_config->pmc_mask);
	}

	if (classes & KPC_CLASS_RAWPMU_MASK) {
		FUNC4(new_config);
		new_config += RAWPMU_CONFIG_COUNT;
	}

	if (FUNC1(&kpc_config_sync, 1) == 0)
		FUNC5((event_t) &kpc_config_sync);
}