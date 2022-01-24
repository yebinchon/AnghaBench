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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UDPLISTENER_RECV_PROC ;
struct TYPE_5__ {int /*<<< orphan*/  Thread; int /*<<< orphan*/  Interrupts; void* SendPacketList; int /*<<< orphan*/ * RecvProc; int /*<<< orphan*/  ListenIP; int /*<<< orphan*/  Event; void* PortList; int /*<<< orphan*/  PacketType; void* Param; } ;
typedef  TYPE_1__ UDPLISTENER ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  UdpListenerThread ; 
 TYPE_1__* FUNC5 (int) ; 

UDPLISTENER *FUNC6(UDPLISTENER_RECV_PROC *recv_proc, void *param, IP *listen_ip, UINT packet_type)
{
	UDPLISTENER *u;
	// Validate arguments
	if (recv_proc == NULL)
	{
		return NULL;
	}
	
	u = FUNC5(sizeof(UDPLISTENER));

	u->Param = param;
	u->PacketType = packet_type;

	u->PortList = FUNC2(NULL);
	u->Event = FUNC3();

	if (listen_ip)
	{
		FUNC0(&u->ListenIP, listen_ip, sizeof(IP));
	}

	u->RecvProc = recv_proc;
	u->SendPacketList = FUNC2(NULL);

	u->Interrupts = FUNC1();

	u->Thread = FUNC4(UdpListenerThread, u);

	return u;
}