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
struct TYPE_4__ {int /*<<< orphan*/  IpCombine; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  IP_COMBINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(VH *v)
{
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(v->IpCombine);i++)
	{
		IP_COMBINE *c = FUNC1(v->IpCombine, i);

		FUNC0(v, c);
	}

	FUNC3(v->IpCombine);
}