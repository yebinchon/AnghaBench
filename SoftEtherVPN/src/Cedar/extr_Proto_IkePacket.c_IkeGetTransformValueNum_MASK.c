#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  ValueList; } ;
struct TYPE_5__ {scalar_t__ Type; } ;
typedef  TYPE_1__ IKE_PACKET_TRANSFORM_VALUE ;
typedef  TYPE_2__ IKE_PACKET_TRANSFORM_PAYLOAD ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

UINT FUNC2(IKE_PACKET_TRANSFORM_PAYLOAD *t, UINT type)
{
	UINT i;
	UINT num;
	// Validate arguments
	if (t == NULL)
	{
		return 0;
	}

	num = 0;

	for (i = 0;i < FUNC1(t->ValueList);i++)
	{
		IKE_PACKET_TRANSFORM_VALUE *v = FUNC0(t->ValueList, i);

		if (v->Type == type)
		{
			num++;
		}
	}

	return num;
}