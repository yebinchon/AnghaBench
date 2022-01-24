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
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  DDNS_CLIENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*,scalar_t__,int,char*) ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

UINT FUNC5(DDNS_CLIENT *c, bool ipv6, char *dst, UINT dst_size, char *replace_v6)
{
	UINT ret = ERR_INTERNAL_ERROR;

	ret = FUNC0(c, ipv6, dst, dst_size, false, replace_v6);


	if (ret == ERR_NO_ERROR)
	{
		IP ip;

		if (FUNC4(&ip, dst))
		{
			if (ipv6 == false && FUNC1(&ip))
			{
				FUNC3(&ip, false);
			}
			else if (ipv6 && FUNC2(&ip))
			{
				FUNC3(&ip, true);
			}
		}
	}

	return ret;
}