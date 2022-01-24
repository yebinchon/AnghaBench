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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct kpc_config_remote {int classes; int /*<<< orphan*/  pmc_mask; int /*<<< orphan*/ * configv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int KPC_CLASS_CONFIGURABLE_MASK ; 
 int KPC_CLASS_FIXED_MASK ; 
 int KPC_CLASS_POWER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kpc_config_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kpc_config_remote*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(uint32_t classes, uint64_t *val)
{
	struct kpc_config_remote mp_config = {
		.classes = classes, .configv = val,
		.pmc_mask = FUNC2(classes)
	};

	FUNC0(val);

	/* no clients have the right to modify both classes */
	if ((classes & (KPC_CLASS_CONFIGURABLE_MASK)) &&
	    (classes & (KPC_CLASS_POWER_MASK)))
	{
		return EPERM;
	}

	FUNC5(&kpc_config_lock);

#ifdef FIXED_COUNTER_SHADOW
	if ((classes & KPC_CLASS_FIXED_MASK) && !kpc_controls_fixed_counters()) {
		lck_mtx_unlock(&kpc_config_lock);
		return EPERM;
	}
# else
	if (classes & KPC_CLASS_FIXED_MASK) {
		FUNC6(&kpc_config_lock);
		return EINVAL;
	}
#endif

	/* translate the power class for the machine layer */
	if (classes & KPC_CLASS_POWER_MASK)
		mp_config.classes |= KPC_CLASS_CONFIGURABLE_MASK;

	FUNC4("setting period %u\n", classes);
	FUNC3( &mp_config );

	FUNC6(&kpc_config_lock);

	return 0;
}