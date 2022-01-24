#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_5__ {int OpCode; int KeyId; int DataSize; int NumAck; int* AckPacketId; void* Data; void* PacketId; void* YourSessionId; void* MySessionId; } ;
typedef  TYPE_1__ OPENVPN_PACKET ;

/* Variables and functions */
 void* FUNC0 (int*,int) ; 
 int OPENVPN_P_ACK_V1 ; 
 int OPENVPN_P_DATA_V1 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int*) ; 
 void* FUNC3 (int*) ; 
 TYPE_1__* FUNC4 (int) ; 

OPENVPN_PACKET *FUNC5(UCHAR *data, UINT size)
{
	UCHAR uc;
	OPENVPN_PACKET *ret = NULL;
	// Validate arguments
	if (data == NULL || size == 0)
	{
		return NULL;
	}

	ret = FUNC4(sizeof(OPENVPN_PACKET));

	uc = *((UCHAR *)data);
	data++;
	size--;

	ret->OpCode = ((uc & 0xF8) >> 3) & 0x1F;
	ret->KeyId = uc & 0x07;

	if (ret->OpCode == OPENVPN_P_DATA_V1)
	{
		// Data packet
		ret->DataSize = size;
		ret->Data = FUNC0(data, size);
		return ret;
	}

	// Sender Channel ID
	if (size < sizeof(UINT64))
	{
		goto LABEL_ERROR;
	}
	ret->MySessionId = FUNC3(data);
	data += sizeof(UINT64);
	size -= sizeof(UINT64);

	// ACK
	if (size < 1)
	{
		goto LABEL_ERROR;
	}
	uc = *((UCHAR *)data);
	data++;
	size--;

	ret->NumAck = uc;

	if (ret->NumAck > 4)
	{
		goto LABEL_ERROR;
	}

	if (ret->NumAck >= 1)
	{
		UINT i;

		if (size < (sizeof(UINT) * (UINT)ret->NumAck + sizeof(UINT64)))
		{
			goto LABEL_ERROR;
		}

		for (i = 0;i < ret->NumAck;i++)
		{
			UINT ui;

			ui = FUNC2(data);

			ret->AckPacketId[i] = ui;

			data += sizeof(UINT);
			size -= sizeof(UINT);
		}

		ret->YourSessionId = FUNC3(data);
		data += sizeof(UINT64);
		size -= sizeof(UINT64);
	}

	if (ret->OpCode != OPENVPN_P_ACK_V1)
	{
		// Read the Packet ID Because in the case of other than ACK
		if (size < sizeof(UINT))
		{
			goto LABEL_ERROR;
		}

		ret->PacketId = FUNC2(data);
		data += sizeof(UINT);
		size -= sizeof(UINT);

		// Payload
		ret->DataSize = size;
		if (size >= 1)
		{
			ret->Data = FUNC0(data, size);
		}
	}

	return ret;

LABEL_ERROR:
	FUNC1(ret);
	return NULL;
}