#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int Delay; scalar_t__ RUdpProtocol; int Ok; int Finished; int /*<<< orphan*/  FinishEvent; int /*<<< orphan*/  FinishedTick; int /*<<< orphan*/ * Result_Nat_T_Sock; int /*<<< orphan*/  CancelFlag; int /*<<< orphan*/  Timeout; int /*<<< orphan*/  NatT_ErrorCode; int /*<<< orphan*/  Ip; int /*<<< orphan*/  SvcName; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ CONNECT_TCP_RUDP_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  IP_PROTO_ICMPV4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ RUDP_PROTOCOL_DNS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC5(THREAD *thread, void *param)
{
	SOCK *sock;
	CONNECT_TCP_RUDP_PARAM *p = (CONNECT_TCP_RUDP_PARAM *)param;
	if (thread == NULL || p == NULL)
	{
		return;
	}

	// Delay
	if (p->Delay >= 1)
	{
		FUNC4(NULL, p->Delay, p->CancelFlag);
	}

	// Connecting process
	sock = FUNC1(p->SvcName, &p->Ip,
		(p->RUdpProtocol == RUDP_PROTOCOL_DNS ? 53 : FUNC0(IP_PROTO_ICMPV4)),
		&p->NatT_ErrorCode, p->Timeout, p->CancelFlag, NULL, NULL,
		(p->RUdpProtocol == RUDP_PROTOCOL_DNS ? 0 : FUNC0(IP_PROTO_ICMPV4)),
		(p->RUdpProtocol == RUDP_PROTOCOL_DNS ? true : false));

	p->Result_Nat_T_Sock = sock;
	p->Ok = (p->Result_Nat_T_Sock == NULL ? false : true);
	p->FinishedTick = FUNC3();
	p->Finished = true;

	FUNC2(p->FinishEvent);
}