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
struct kpc_running_remote {int /*<<< orphan*/  cfg_state_mask; int /*<<< orphan*/  cfg_target_mask; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kpc_running_remote*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kpc_xcall_sync ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4( void *vstate )
{
	struct kpc_running_remote *mp_config = (struct kpc_running_remote*) vstate;
	FUNC0(mp_config);

	FUNC2(mp_config->cfg_target_mask,
				 mp_config->cfg_state_mask);

	if (FUNC1(&kpc_xcall_sync, 1) == 0)
		FUNC3((event_t) &kpc_xcall_sync);
}