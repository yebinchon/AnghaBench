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
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CmpIpAddressList ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

LIST *FUNC5(LIST *o)
{
	LIST *ret;
	UINT i;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	ret = FUNC4(CmpIpAddressList);

	for (i = 0;i < FUNC3(o);i++)
	{
		IP *ip = FUNC2(o, i);

		if (ip != NULL)
		{
			ip = FUNC1(ip, sizeof(IP));

			FUNC0(ret, ip);
		}
	}

	return ret;
}