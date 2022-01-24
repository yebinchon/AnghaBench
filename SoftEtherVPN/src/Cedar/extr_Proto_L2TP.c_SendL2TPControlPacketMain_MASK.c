#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ SrcPort; scalar_t__ Data; } ;
typedef  TYPE_2__ UDPPACKET ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {TYPE_1__* Buf; } ;
struct TYPE_11__ {scalar_t__ LastNr; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIp; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIp; } ;
struct TYPE_9__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_3__ L2TP_TUNNEL ;
typedef  int /*<<< orphan*/  L2TP_SERVER ;
typedef  TYPE_4__ L2TP_QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IPSEC_PORT_L2TPV3_VIRTUAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC4(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_QUEUE *q)
{
	UDPPACKET *p;
	// Validate arguments
	if (l2tp == NULL || t == NULL || q == NULL)
	{
		return;
	}

	p = FUNC2(&t->ServerIp, t->ServerPort, &t->ClientIp, t->ClientPort,
		FUNC0(q->Buf->Buf, q->Buf->Size), q->Buf->Size);

	// Update the received sequence number
	FUNC3(((UCHAR *)p->Data) + (p->SrcPort == IPSEC_PORT_L2TPV3_VIRTUAL ? 14 : 10), t->LastNr + 1);

	FUNC1(l2tp, p);
}