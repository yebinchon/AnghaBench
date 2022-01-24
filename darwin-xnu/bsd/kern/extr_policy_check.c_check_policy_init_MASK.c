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
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  policy_conf ; 
 int policy_flags ; 
 int /*<<< orphan*/  policy_handle ; 

errno_t
FUNC1(int flags)
{
	/* Only instantiate the module if we have been asked to do checking */
	if (!flags)
		return 0;

	policy_flags = flags;

	return FUNC0(&policy_conf, &policy_handle, NULL);
}