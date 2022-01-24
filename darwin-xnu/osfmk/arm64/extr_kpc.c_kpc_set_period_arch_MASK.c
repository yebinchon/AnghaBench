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
struct kpc_config_remote {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct kpc_config_remote*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kpc_config_remote*) ; 
 int kpc_configured ; 
 int /*<<< orphan*/  kpc_reload_sync ; 
 int /*<<< orphan*/  kpc_set_reload_xcall ; 

int
FUNC2(struct kpc_config_remote *mp_config)
{
	FUNC0(mp_config);

	/* dispatch to all CPUs */
	FUNC1(&kpc_reload_sync, TRUE, kpc_set_reload_xcall, mp_config);

	kpc_configured = 1;

	return 0;
}