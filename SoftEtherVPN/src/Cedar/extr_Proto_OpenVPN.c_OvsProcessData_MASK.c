#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ USHORT ;
typedef  int UINT ;
struct TYPE_10__ {int Size; scalar_t__* Data; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ UDPPACKET ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {int /*<<< orphan*/  SendPacketList; int /*<<< orphan*/  RecvPacketList; } ;
struct TYPE_11__ {int /*<<< orphan*/  DstPort; int /*<<< orphan*/  DstIP; int /*<<< orphan*/  SrcPort; int /*<<< orphan*/  SrcIP; int /*<<< orphan*/ * Data; } ;
typedef  TYPE_2__ TCP_RAW_DATA ;
typedef  TYPE_3__ OPENVPN_SERVER ;
typedef  int /*<<< orphan*/  FIFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  OPENVPN_PROTOCOL_TCP ; 
 int OPENVPN_TCP_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__*,int) ; 

bool FUNC15(void *param, TCP_RAW_DATA *received_data, FIFO *data_to_send)
{
	bool ret = true;
	UINT i;
	OPENVPN_SERVER *server;
	UCHAR buf[OPENVPN_TCP_MAX_PACKET_SIZE];

	if (param == NULL || received_data == NULL || data_to_send == NULL)
	{
		return false;
	}

	server = param;

	// Separate to a list of datagrams by interpreting the data received from the TCP socket
	while (true)
	{
		UDPPACKET *packet;
		USHORT payload_size, packet_size;
		FIFO *fifo = received_data->Data;
		const UINT fifo_size = FUNC6(fifo);

		if (fifo_size < sizeof(USHORT))
		{
			// Non-arrival
			break;
		}

		// The beginning of a packet contains the data size
		payload_size = FUNC12(FUNC5(fifo));
		packet_size = payload_size + sizeof(USHORT);

		if (payload_size == 0 || packet_size > sizeof(buf))
		{
			ret = false;
			FUNC2("OvsProcessData(): Invalid payload size: %u bytes\n", payload_size);
			break;
		}

		if (fifo_size < packet_size)
		{
			// Non-arrival
			break;
		}

		if (FUNC13(fifo, buf, packet_size) != packet_size)
		{
			ret = false;
			FUNC2("OvsProcessData(): ReadFifo() failed to read the packet\n");
			break;
		}

		// Insert packet into the list
		packet = FUNC10(&received_data->SrcIP, received_data->SrcPort, &received_data->DstIP, received_data->DstPort, FUNC1(buf + sizeof(USHORT), payload_size), payload_size);
		packet->Type = OPENVPN_PROTOCOL_TCP;
		FUNC0(server->RecvPacketList, packet);
	}

	// Process the list of received datagrams
	FUNC11(server, server->RecvPacketList);

	// Release the received packet list
	for (i = 0; i < FUNC9(server->RecvPacketList); ++i)
	{
		UDPPACKET *p = FUNC8(server->RecvPacketList, i);
		FUNC7(p);
	}

	FUNC3(server->RecvPacketList);

	// Store in the queue by getting a list of the datagrams to be transmitted from the OpenVPN server
	for (i = 0; i < FUNC9(server->SendPacketList); ++i)
	{
		UDPPACKET *p = FUNC8(server->SendPacketList, i);

		// Store the size in the TCP send queue first
		USHORT us = FUNC4((USHORT)p->Size);

		FUNC14(data_to_send, &us, sizeof(USHORT));

		// Write the data body
		FUNC14(data_to_send, p->Data, p->Size);

		// Packet release
		FUNC7(p);
	}

	FUNC3(server->SendPacketList);

	return ret;
}