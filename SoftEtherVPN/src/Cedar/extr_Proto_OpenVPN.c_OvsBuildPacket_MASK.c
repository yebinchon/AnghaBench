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
typedef  size_t UINT ;
typedef  int UCHAR ;
struct TYPE_3__ {int OpCode; int KeyId; int DataSize; int NumAck; int PacketId; int /*<<< orphan*/ * Data; int /*<<< orphan*/  YourSessionId; scalar_t__* AckPacketId; int /*<<< orphan*/  MySessionId; } ;
typedef  TYPE_1__ OPENVPN_PACKET ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  OPENVPN_MAX_NUMACK ; 
 int OPENVPN_P_ACK_V1 ; 
 int OPENVPN_P_DATA_V1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BUF *FUNC7(OPENVPN_PACKET *p)
{
	BUF *b;
	UCHAR uc;
	UINT num_ack;
	// Validate arguments
	if (p == NULL)
	{
		return NULL;
	}

	b = FUNC1();

	// OpCode + KeyID
	uc = ((p->OpCode << 3) & 0xF8) | (p->KeyId & 0x07);
	FUNC4(b, uc);

	if (p->OpCode == OPENVPN_P_DATA_V1)
	{
		// Data Packet
		FUNC3(b, p->Data, p->DataSize);
		FUNC2(b, 0, 0);
		return b;
	}

	// Sender Channel ID
	FUNC6(b, p->MySessionId);

	// NumAck
	num_ack = FUNC0(p->NumAck, OPENVPN_MAX_NUMACK);
	FUNC4(b, (UCHAR)num_ack);

	if (p->NumAck >= 1)
	{
		UINT i;

		for (i = 0;i < num_ack;i++)
		{
			FUNC5(b, (UCHAR)p->AckPacketId[i]);
		}

		// Received Channel ID
		FUNC6(b, p->YourSessionId);
	}

	if (p->OpCode != OPENVPN_P_ACK_V1)
	{
		// Packet ID
		FUNC5(b, p->PacketId);

		// Payload
		if (p->DataSize >= 1 && p->Data != NULL)
		{
			FUNC3(b, p->Data, p->DataSize);
		}
	}

	FUNC2(b, 0, 0);

	return b;
}