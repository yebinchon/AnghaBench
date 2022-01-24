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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

bool FUNC8(IP *ip4, IP *ip6, char *hostname, UINT timeout, bool *cancel)
{
	IP a, b;
	bool ok_a, ok_b;
	// Validate arguments
	if (ip4 == NULL || ip6 == NULL || hostname == NULL)
	{
		return false;
	}

	FUNC6(ip4);
	FUNC7(ip6);

	ok_a = ok_b = false;

	if (FUNC2(&a, hostname, timeout, cancel))
	{
		ok_a = true;
	}

	if (FUNC1(&b, hostname, timeout, cancel))
	{
		ok_b = true;
	}

	if (ok_a)
	{
		if (FUNC3(&a))
		{
			FUNC0(ip4, &a, sizeof(IP));
		}
	}
	if (ok_b)
	{
		if (FUNC3(&b))
		{
			FUNC0(ip4, &b, sizeof(IP));
		}

		if (FUNC4(&b))
		{
			FUNC0(ip6, &b, sizeof(IP));
		}
	}
	if (ok_a)
	{
		if (FUNC4(&a))
		{
			FUNC0(ip6, &a, sizeof(IP));
		}
	}

	if (FUNC5(ip4) && FUNC5(ip6))
	{
		return false;
	}

	return true;
}