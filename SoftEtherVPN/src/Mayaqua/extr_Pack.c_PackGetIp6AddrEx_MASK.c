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
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  IPV6_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

bool FUNC2(PACK *p, char *name, IPV6_ADDR *addr, UINT index)
{
	// Validate arguments
	if (p == NULL || name == NULL || addr == NULL)
	{
		FUNC1(addr, sizeof(IPV6_ADDR));
		return false;
	}

	return FUNC0(p, name, addr, sizeof(IPV6_ADDR), index);
}