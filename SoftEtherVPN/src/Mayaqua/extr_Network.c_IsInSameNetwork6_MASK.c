#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ ipv6_scope_id; } ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

bool FUNC3(IP *a1, IP *a2, IP *subnet)
{
	IP prefix1, prefix2;
	// Validate arguments
	if (FUNC2(a1) == false || FUNC2(a2) == false || FUNC2(subnet) == false)
	{
		return false;
	}

	if (a1->ipv6_scope_id != a2->ipv6_scope_id)
	{
		return false;
	}

	FUNC1(&prefix1, a1, subnet);
	FUNC1(&prefix2, a2, subnet);

	if (FUNC0(&prefix1, &prefix2) == 0)
	{
		return true;
	}

	return false;
}