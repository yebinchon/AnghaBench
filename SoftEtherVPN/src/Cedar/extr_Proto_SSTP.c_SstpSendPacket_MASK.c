#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ PriorityQoS; } ;
struct TYPE_14__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_13__ {scalar_t__ IsControl; int /*<<< orphan*/  AttributeList; int /*<<< orphan*/  MessageType; } ;
struct TYPE_12__ {int /*<<< orphan*/  SendQueue; } ;
typedef  TYPE_1__ SSTP_SERVER ;
typedef  TYPE_2__ SSTP_PACKET ;
typedef  TYPE_3__ BUF ;
typedef  TYPE_4__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_2__*) ; 

void FUNC6(SSTP_SERVER *s, SSTP_PACKET *p)
{
	BUF *b;
	BLOCK *block;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	if (p->IsControl)
	{
		FUNC0("SSTP Control Packet Send: Msg = %u, Num = %u\n", p->MessageType, FUNC3(p->AttributeList));
	}
	else
	{
		//Debug("SSTP Data Packet Send: Size=%u\n", p->DataSize);
	}

	b = FUNC5(p);
	if (b == NULL)
	{
		return;
	}

	block = FUNC4(b->Buf, b->Size, 0);
	block->PriorityQoS = p->IsControl;
	FUNC1(b);

	FUNC2(s->SendQueue, block);
}