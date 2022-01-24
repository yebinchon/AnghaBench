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
struct kpc_running_remote {int classes; int /*<<< orphan*/  cfg_state_mask; int /*<<< orphan*/  cfg_target_mask; } ;

/* Variables and functions */
 int KPC_CLASS_FIXED_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct kpc_running_remote*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4( void *vstate )
{
	struct kpc_running_remote *mp_config = (struct kpc_running_remote*) vstate;
	FUNC0(mp_config);

	if (FUNC1())
		FUNC3(mp_config->classes & KPC_CLASS_FIXED_MASK);

	FUNC2(mp_config->cfg_target_mask,
				 mp_config->cfg_state_mask);
}