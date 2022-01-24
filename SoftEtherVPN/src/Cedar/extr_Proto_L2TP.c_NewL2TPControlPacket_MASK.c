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
typedef  int /*<<< orphan*/  USHORT ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int Mandatory; int DataSize; int /*<<< orphan*/  Data; int /*<<< orphan*/  Type; } ;
struct TYPE_5__ {int IsControl; int HasLength; int HasSequence; int Ver; int /*<<< orphan*/  AvpList; scalar_t__ MessageType; } ;
typedef  TYPE_1__ L2TP_PACKET ;
typedef  TYPE_2__ L2TP_AVP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_MESSAGE_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 

L2TP_PACKET *FUNC5(UINT message_type, bool is_v3)
{
	L2TP_PACKET *p = FUNC4(sizeof(L2TP_PACKET));

	p->IsControl = true;
	p->HasLength = true;
	p->HasSequence = true;
	p->Ver = (is_v3 ? 3 : 2);
	p->MessageType = message_type;

	p->AvpList = FUNC3(NULL);

	if (message_type != 0)
	{
		L2TP_AVP *a;
		USHORT us;

		a = FUNC4(sizeof(L2TP_AVP));

		a->Type = L2TP_AVP_TYPE_MESSAGE_TYPE;
		a->Mandatory = true;

		us = FUNC2(message_type);
		a->Data = FUNC1(&us, sizeof(USHORT));
		a->DataSize = sizeof(USHORT);

		FUNC0(p->AvpList, a);
	}

	return p;
}