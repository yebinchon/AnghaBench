#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ ipv6_scope_id; } ;
struct TYPE_4__ {scalar_t__ Id; TYPE_3__ IpAddress; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ AC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(LIST *o)
{
	UINT i;
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		AC *ac = FUNC1(o, i);

		if (FUNC0(&ac->IpAddress))
		{
			ac->IpAddress.ipv6_scope_id = 0;
		}

		ac->Id = (i + 1);
	}
}