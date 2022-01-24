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
struct TYPE_8__ {int /*<<< orphan*/  LastRecvTime; int /*<<< orphan*/  TubeRecv; } ;
struct TYPE_7__ {int /*<<< orphan*/  DataSize; int /*<<< orphan*/  Data; } ;
typedef  TYPE_1__ TUBEDATA ;
typedef  TYPE_2__ PPP_SESSION ;
typedef  int /*<<< orphan*/  PPP_PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PPP_PACKET_RECV_TIMEOUT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PPP_PACKET *FUNC5(PPP_SESSION *p, bool async)
{
	TUBEDATA *d;
	PPP_PACKET *pp;
	// Validate arguments
	if (p == NULL)
	{
		return NULL;
	}

LABEL_LOOP:

	if (async == false)
	{
		d = FUNC4(p->TubeRecv, PPP_PACKET_RECV_TIMEOUT);
	}
	else
	{
		d = FUNC3(p->TubeRecv);
	}

	if (d == NULL)
	{
		return NULL;
	}

	pp = FUNC1(d->Data, d->DataSize);
	FUNC0(d);

	if (pp == NULL)
	{
		// A broken packet is received
		goto LABEL_LOOP;
	}

	p->LastRecvTime = FUNC2();

	return pp;
}