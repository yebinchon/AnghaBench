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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 

UINT FUNC2(BYTE *u, UINT size)
{
	UINT i, num;
	// Validate arguments
	if (u == NULL)
	{
		return 0;
	}
	if (size == 0)
	{
		size = FUNC1((char *)u);
	}

	i = num = 0;
	while (true)
	{
		UINT type;

		type = FUNC0(u, size, i);
		if (type == 0)
		{
			break;
		}
		i += type;
		num++;
	}

	return num;
}