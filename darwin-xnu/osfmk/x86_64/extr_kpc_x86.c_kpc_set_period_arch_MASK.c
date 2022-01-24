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
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  CPUMASK_ALL ; 
 int /*<<< orphan*/  kpc_set_reload_mp_call ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kpc_config_remote*) ; 

int
FUNC1( struct kpc_config_remote *mp_config )
{
	FUNC0( CPUMASK_ALL, ASYNC, kpc_set_reload_mp_call, mp_config );

	return 0;
}