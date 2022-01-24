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
typedef  int /*<<< orphan*/  POLICY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

POLICY *FUNC2(POLICY *policy)
{
	POLICY *ret;
	// Validate arguments
	if (policy == NULL)
	{
		return NULL;
	}

	ret = FUNC1(sizeof(POLICY));
	FUNC0(ret, policy, sizeof(POLICY));

	return ret;
}