#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {struct TYPE_6__* Parse_EapMessage; int /*<<< orphan*/ * AvpList; } ;
typedef  TYPE_1__ RADIUS_PACKET ;
typedef  TYPE_1__ RADIUS_AVP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(RADIUS_PACKET *p)
{
	UINT i;
	if (p == NULL)
	{
		return;
	}

	if (p->AvpList != NULL)
	{
		for (i = 0;i < FUNC2(p->AvpList);i++)
		{
			RADIUS_AVP *a = FUNC1(p->AvpList, i);

			FUNC0(a);
		}

		FUNC3(p->AvpList);
	}

	FUNC0(p->Parse_EapMessage);

	FUNC0(p);
}