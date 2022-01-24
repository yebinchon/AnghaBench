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
typedef  int UINT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(IP *ip, IP *mask)
{
	UINT a, b;
	// Validate arguments
	if (ip == NULL || mask == NULL)
	{
		return false;
	}

	if (FUNC1(ip) == false || FUNC1(mask) == false)
	{
		return false;
	}

	if (FUNC2(mask) == false)
	{
		return false;
	}

	a = FUNC0(ip);
	b = FUNC0(mask);

	if ((a & b) == a)
	{
		return true;
	}

	return false;
}