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
struct mac_policy_conf {int /*<<< orphan*/  mpc_data; } ;
typedef  int /*<<< orphan*/  mac_policy_handle_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,void**,size_t*) ; 
 struct mac_policy_conf* FUNC1 (int /*<<< orphan*/  const) ; 

int
FUNC2(const mac_policy_handle_t handle, const char *key,
    void **valp, size_t *sizep)
{
	struct mac_policy_conf *mpc;
	int error = ENOENT;

	if ((mpc = FUNC1(handle)) != NULL)
		error = FUNC0(mpc->mpc_data, key, valp, sizep);
	return (error);
}