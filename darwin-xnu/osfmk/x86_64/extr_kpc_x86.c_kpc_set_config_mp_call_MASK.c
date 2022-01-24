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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_FIXED_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct kpc_config_remote*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kpc_config_remote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kpc_config_remote*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *vmp_config)
{

	struct kpc_config_remote *mp_config = vmp_config;
	kpc_config_t *new_config = NULL;
	uint32_t classes = 0, count = 0;
	boolean_t enabled;

	FUNC0(mp_config);
	FUNC0(mp_config->configv);
	classes = mp_config->classes;
	new_config = mp_config->configv;

	enabled = FUNC5(FALSE);
	
	if (classes & KPC_CLASS_FIXED_MASK)
	{
		FUNC4(&new_config[count]);
		count += FUNC1(KPC_CLASS_FIXED_MASK);
	}

	if (classes & KPC_CLASS_CONFIGURABLE_MASK) {
		FUNC3(&new_config[count], mp_config->pmc_mask);
		count += FUNC2(mp_config->pmc_mask);
	}

	FUNC5(enabled);
}