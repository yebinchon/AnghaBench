#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ PayloadType; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IKE_PACKET_PAYLOAD ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

UINT FUNC2(LIST *o, UINT payload_type)
{
	UINT i, num;
	// Validate arguments
	if (o == NULL)
	{
		return 0;
	}

	num = 0;

	for (i = 0;i < FUNC1(o);i++)
	{
		IKE_PACKET_PAYLOAD *p = FUNC0(o, i);

		if (p->PayloadType == payload_type)
		{
			num++;
		}
	}

	return num;
}