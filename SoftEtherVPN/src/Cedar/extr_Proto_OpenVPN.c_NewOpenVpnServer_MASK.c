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
struct TYPE_5__ {int NextSessionId; int /*<<< orphan*/  Dh; int /*<<< orphan*/  Now; void* SendPacketList; void* RecvPacketList; int /*<<< orphan*/  SessionList; int /*<<< orphan*/ * SockEvent; int /*<<< orphan*/ * Interrupt; int /*<<< orphan*/ * Cedar; } ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  TYPE_1__ OPENVPN_SERVER ;
typedef  int /*<<< orphan*/  INTERRUPT_MANAGER ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  DH_PARAM_BITS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OvsCompareSessionList ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int) ; 

OPENVPN_SERVER *FUNC6(CEDAR *cedar, INTERRUPT_MANAGER *interrupt, SOCK_EVENT *sock_event)
{
	OPENVPN_SERVER *s;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	s = FUNC5(sizeof(OPENVPN_SERVER));

	s->Cedar = cedar;
	s->Interrupt = interrupt;
	s->SockEvent = sock_event;

	s->SessionList = FUNC1(OvsCompareSessionList);
	s->RecvPacketList = FUNC2(NULL);
	s->SendPacketList = FUNC2(NULL);

	s->Now = FUNC4();

	s->NextSessionId = 1;

	FUNC3(s, NULL, NULL, "LO_START");

	s->Dh = FUNC0(DH_PARAM_BITS_DEFAULT);

	return s;
}