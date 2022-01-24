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

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int /*<<< orphan*/  IN_CFG_BIND_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int dev_id, int action_mask, int bindtype)
{
	const int *binds;
	int k, keys = 0;
	int count = 0;

	binds = FUNC2(dev_id);
	if (binds == NULL)
		return 0;

	FUNC1(dev_id, IN_CFG_BIND_COUNT, &count);
	for (k = 0; k < count; k++)
	{
		if (binds[FUNC0(k, bindtype)] & action_mask)
			keys++;
	}

	return keys;
}