#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_7__ {int NumAck; int /*<<< orphan*/ * AckPacketId; int /*<<< orphan*/  KeyId; int /*<<< orphan*/  OpCode; } ;
typedef  int /*<<< orphan*/  OPENVPN_SESSION ;
typedef  int /*<<< orphan*/  OPENVPN_SERVER ;
typedef  TYPE_1__ OPENVPN_PACKET ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(OPENVPN_SERVER *s, OPENVPN_SESSION *se, OPENVPN_PACKET *p)
{
	BUF *b;
	UINT i;
	// Validate arguments
	if (s == NULL || se == NULL || p == NULL)
	{
		return;
	}

	FUNC0("Sending Opcode=%u  ", p->OpCode);
	if (p->NumAck >= 1)
	{
		FUNC0("Sending ACK Packet IDs (c=%u): ", p->KeyId);
		for (i = 0;i < p->NumAck;i++)
		{
			FUNC0("%u ", p->AckPacketId[i]);
		}
	}
	FUNC0("\n");

	b = FUNC2(p);

	FUNC3(s, se, b->Buf, b->Size);

	FUNC1(b);
}