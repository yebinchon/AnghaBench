#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int Deny; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ AC ;

/* Variables and functions */
 int /*<<< orphan*/  GSF_DISABLE_AC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(IP *ip, LIST *o)
{
	UINT i;
	// Validate arguments
	if (ip == NULL || o == NULL)
	{
		return false;
	}

	if (FUNC0(GSF_DISABLE_AC) != 0)
	{
		return false;
	}

	for (i = 0;i < FUNC3(o);i++)
	{
		AC *ac = FUNC2(o, i);

		if (FUNC1(ip, ac))
		{
			if (ac->Deny == false)
			{
				return false;
			}
			else
			{
				return true;
			}
		}
	}

	return false;
}