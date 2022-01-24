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
typedef  int /*<<< orphan*/  IPV6_ADDR ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

bool FUNC4(FOLDER *f, char *name, IPV6_ADDR *addr)
{
	IP ip;
	// Validate arguments
	FUNC3(addr, sizeof(IPV6_ADDR));
	if (f == NULL || name == NULL || addr == NULL)
	{
		return false;
	}

	if (FUNC0(f, name, &ip) == false)
	{
		return false;
	}

	if (FUNC2(&ip) == false)
	{
		return false;
	}

	if (FUNC1(addr, &ip) == false)
	{
		return false;
	}

	return true;
}