#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int pipe_read; int pipe_write; int SpecialFlag; int pipe_special_read2; int pipe_special_read3; } ;
struct TYPE_10__ {int socket; } ;
struct TYPE_9__ {int IsRawIpMode; int* RawIpMyMacAddr; int RawIP_TmpBufferSize; int /*<<< orphan*/  RawIP_TmpBuffer; int /*<<< orphan*/  RawIpSendQueue; int /*<<< orphan*/  YourIP; int /*<<< orphan*/  MyIP; TYPE_3__* RawIcmp; TYPE_6__* Cancel; TYPE_3__* RawUdp; TYPE_3__* RawTcp; void* Title; void* Name; } ;
typedef  TYPE_1__ ETH ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_SPECIAL_IPRAW_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_6__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 TYPE_1__* FUNC14 (int) ; 

ETH *FUNC15()
{
	ETH *e;

	if (FUNC3() == false)
	{
		return NULL;
	}

	e = FUNC14(sizeof(ETH));

	e->IsRawIpMode = true;

	e->RawTcp = FUNC8(FUNC4(IPPROTO_TCP), NULL);
	e->RawUdp = FUNC8(FUNC4(IPPROTO_UDP), NULL);
	e->RawIcmp = FUNC8(FUNC4(IPPROTO_ICMP), NULL);

	if (e->RawTcp == NULL || e->RawUdp == NULL || e->RawIcmp == NULL)
	{
		FUNC9(e->RawTcp);
		FUNC9(e->RawUdp);
		FUNC9(e->RawIcmp);

		FUNC2(e);
		return NULL;
	}

	FUNC0(e->RawTcp);
	FUNC0(e->RawUdp);
	FUNC0(e->RawIcmp);

	FUNC11(e->RawTcp, true);
	FUNC11(e->RawUdp, true);
	FUNC11(e->RawIcmp, true);

	e->Name = FUNC1(BRIDGE_SPECIAL_IPRAW_NAME);
	e->Title = FUNC1(BRIDGE_SPECIAL_IPRAW_NAME);
	e->Cancel = FUNC6();

	FUNC12(e->Cancel->pipe_read, e->Cancel->pipe_write);
	e->Cancel->pipe_read = e->Cancel->pipe_write = -1;

	FUNC13(e->RawTcp->socket, true);
	FUNC13(e->RawUdp->socket, true);
	FUNC13(e->RawIcmp->socket, true);

	e->Cancel->SpecialFlag = true;
	e->Cancel->pipe_read = e->RawTcp->socket;
	e->Cancel->pipe_special_read2 = e->RawUdp->socket;
	e->Cancel->pipe_special_read3 = e->RawIcmp->socket;

	e->RawIpMyMacAddr[2] = 0x01;
	e->RawIpMyMacAddr[5] = 0x01;

	FUNC10(&e->MyIP, 10, 171, 7, 253);
	FUNC10(&e->YourIP, 10, 171, 7, 254);

	e->RawIpSendQueue = FUNC7();

	e->RawIP_TmpBufferSize = 67000;
	e->RawIP_TmpBuffer = FUNC5(e->RawIP_TmpBufferSize);

	return e;
}