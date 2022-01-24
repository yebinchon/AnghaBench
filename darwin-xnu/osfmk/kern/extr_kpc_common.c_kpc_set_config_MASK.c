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
struct kpc_config_remote {int classes; int /*<<< orphan*/  pmc_mask; int /*<<< orphan*/ * configv; } ;
typedef  int /*<<< orphan*/  kpc_config_t ;

/* Variables and functions */
 int EPERM ; 
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_POWER_MASK ; 
 int KPC_CLASS_RAWPMU_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kpc_config_lock ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct kpc_config_remote*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(uint32_t classes, kpc_config_t *configv)
{
	int ret = 0;
	struct kpc_config_remote mp_config = {
		.classes = classes, .configv = configv,
		.pmc_mask = FUNC1(classes)
	};

	FUNC0(configv);

	/* don't allow RAWPMU configuration when sharing counters */
	if ((classes & KPC_CLASS_RAWPMU_MASK) && FUNC2()) {
		return EPERM;
	}

	/* no clients have the right to modify both classes */
	if ((classes & (KPC_CLASS_CONFIGURABLE_MASK)) &&
	    (classes & (KPC_CLASS_POWER_MASK)))
	{
		return EPERM;
	}

	FUNC4(&kpc_config_lock);

	/* translate the power class for the machine layer */
	if (classes & KPC_CLASS_POWER_MASK)
		mp_config.classes |= KPC_CLASS_CONFIGURABLE_MASK;

	ret = FUNC3( &mp_config );

	FUNC5(&kpc_config_lock);

	return ret;
}