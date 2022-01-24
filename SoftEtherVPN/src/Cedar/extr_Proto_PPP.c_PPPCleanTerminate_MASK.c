#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {scalar_t__ Code; } ;
struct TYPE_14__ {int IsControl; scalar_t__ Protocol; TYPE_9__* Lcp; } ;
struct TYPE_13__ {TYPE_10__* TubeRecv; int /*<<< orphan*/  NextId; } ;
struct TYPE_12__ {int /*<<< orphan*/  Event; } ;
typedef  TYPE_1__ PPP_SESSION ;
typedef  TYPE_2__ PPP_PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_10__*) ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ PPP_LCP_CODE_TERMINATE_ACK ; 
 int /*<<< orphan*/  PPP_LCP_CODE_TERMINATE_REQ ; 
 scalar_t__ PPP_PROTOCOL_LCP ; 
 scalar_t__ PPP_TERMINATE_TIMEOUT ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC8 (int) ; 

void FUNC9(PPP_SESSION *p)
{
	PPP_PACKET *pp;
	PPP_PACKET *res;
	UINT64 giveup_tick = FUNC6() + (UINT64)PPP_TERMINATE_TIMEOUT;
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	// Send a Terminate Request
	pp = FUNC8(sizeof(PPP_PACKET));
	pp->IsControl = true;
	pp->Protocol = PPP_PROTOCOL_LCP;
	pp->Lcp = FUNC3(PPP_LCP_CODE_TERMINATE_REQ, p->NextId++);
	FUNC0("PPP: Terminate Request is Sent.\n");
	if (FUNC5(p, pp) == false)
	{
		goto LABEL_CLEANUP;
	}

	// Wait for Terminate ACK
	while (true)
	{
		UINT64 now = FUNC6();
		UINT interval;

		if (now >= giveup_tick)
		{
			break;
		}

		while (true)
		{
			if (FUNC2(p->TubeRecv) == false)
			{
				break;
			}

			res = FUNC4(p, true);

			if (res == NULL)
			{
				break;
			}

			if (res->IsControl && res->Protocol == PPP_PROTOCOL_LCP && res->Lcp->Code == PPP_LCP_CODE_TERMINATE_ACK)
			{
				FUNC0("PPP: Terminate ACK is Received.\n");
				FUNC1(res);
				goto LABEL_CLEANUP;
			}

			FUNC1(res);
		}

		interval = (UINT)(giveup_tick - now);

		FUNC7(p->TubeRecv->Event, interval);
	}

LABEL_CLEANUP:
	FUNC1(pp);
}