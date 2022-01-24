#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int NoNatT; int IsInCedarPortList; int ClientMode; int IsIPv6; scalar_t__ MyCookie; scalar_t__ YourCookie; int /*<<< orphan*/  NatT_GetIpThread; int /*<<< orphan*/  NatT_HaltEvent; int /*<<< orphan*/  NatT_Lock; int /*<<< orphan*/  MyPort; scalar_t__ MaxUdpPacketSize; int /*<<< orphan*/  NextIv; int /*<<< orphan*/  RecvBlockQueue; int /*<<< orphan*/  MyIp; int /*<<< orphan*/  YourKey; int /*<<< orphan*/  MyKey; TYPE_2__* UdpSock; void* Now; void* CreatedTick; int /*<<< orphan*/  NatT_TranId; TYPE_3__* Cedar; } ;
typedef  TYPE_1__ UDP_ACCEL ;
struct TYPE_11__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  UdpPortList; } ;
struct TYPE_10__ {int /*<<< orphan*/  LocalPort; } ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTU_FOR_PPPOE ; 
 int /*<<< orphan*/  NatT_GetIpThread ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__* FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 void* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* FUNC16 () ; 
 scalar_t__ UDP_SERVER_PORT_HIGHER ; 
 scalar_t__ UDP_SERVER_PORT_LOWER ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (int) ; 

UDP_ACCEL *FUNC19(CEDAR *cedar, IP *ip, bool client_mode, bool random_port, bool no_nat_t)
{
	UDP_ACCEL *a;
	SOCK *s;
	UINT max_udp_size;
	bool is_in_cedar_port_list = false;

	if (FUNC6(ip))
	{
		ip = NULL;
	}

	if (client_mode || random_port)
	{
		// Use a appropriate vacant port number in the case of using random port or client mode
		s = FUNC12(0, ip);
	}
	else
	{
		// Specify in the range in the case of server mode
		UINT i;
		s = NULL;

		FUNC7(cedar->UdpPortList);
		{
			for (i = UDP_SERVER_PORT_LOWER;i <= UDP_SERVER_PORT_HIGHER;i++)
			{
				if (FUNC5(cedar->UdpPortList, i) == false)
				{
					s = FUNC12(i, ip);

					if (s != NULL)
					{
						is_in_cedar_port_list = true;
						break;
					}
				}
			}

			if (s == NULL)
			{
				// Leave the port selection to the OS because the available port is not found within the range
				s = FUNC12(0, ip);
			}

			if (s != NULL && is_in_cedar_port_list)
			{
				FUNC0(cedar->UdpPortList, i);
			}
		}
		FUNC17(cedar->UdpPortList);
	}

	if (s == NULL)
	{
		return NULL;
	}

	a = FUNC18(sizeof(UDP_ACCEL));

	a->Cedar = cedar;
	FUNC1(a->Cedar->ref);

	a->NoNatT = no_nat_t;


	a->NatT_TranId = FUNC15();

	a->CreatedTick = FUNC16();

	a->IsInCedarPortList = is_in_cedar_port_list;

	a->ClientMode = client_mode;

	a->Now = FUNC16();
	a->UdpSock = s;
	FUNC13(a->MyKey, sizeof(a->MyKey));
	FUNC13(a->YourKey, sizeof(a->YourKey));

	FUNC2(&a->MyIp, ip, sizeof(IP));
	a->MyPort = s->LocalPort;

	a->IsIPv6 = FUNC4(ip);

	if (a->IsIPv6)
	{
		a->NoNatT = true;
	}

	a->RecvBlockQueue = FUNC10();

	FUNC13(a->NextIv, sizeof(a->NextIv));

	do
	{
		a->MyCookie = FUNC14();
	}
	while (a->MyCookie == 0);

	do
	{
		a->YourCookie = FUNC14();
	}
	while (a->MyCookie == 0 || a->MyCookie == a->YourCookie);

	// Calculate the maximum transmittable UDP packet size
	max_udp_size = MTU_FOR_PPPOE;

	if (a->IsIPv6 == false)
	{
		// IPv4
		max_udp_size -= 20;
	}
	else
	{
		// IPv6
		max_udp_size -= 40;
	}

	// UDP
	max_udp_size -= 8;

	a->MaxUdpPacketSize = max_udp_size;

	FUNC3("Udp Accel My Port = %u\n", a->MyPort);

	// Initialize the NAT-T server IP address acquisition thread
	a->NatT_Lock = FUNC9();
	a->NatT_HaltEvent = FUNC8();

	if (a->NoNatT == false)
	{
		a->NatT_GetIpThread = FUNC11(NatT_GetIpThread, a);
	}

	return a;
}