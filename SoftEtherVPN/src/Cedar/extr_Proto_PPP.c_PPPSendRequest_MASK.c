#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
struct TYPE_16__ {int /*<<< orphan*/  Code; scalar_t__ Id; } ;
struct TYPE_15__ {int IsControl; TYPE_3__* Lcp; scalar_t__ Protocol; } ;
struct TYPE_14__ {int /*<<< orphan*/  NextId; } ;
typedef  TYPE_1__ PPP_SESSION ;
typedef  TYPE_2__ PPP_PACKET ;
typedef  TYPE_3__ PPP_LCP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PPP_PROTOCOL_IPCP ; 
 scalar_t__ PPP_PROTOCOL_LCP ; 
 TYPE_2__* FUNC5 (int) ; 

bool FUNC6(PPP_SESSION *p, USHORT protocol, PPP_LCP *c)
{
	PPP_PACKET *pp;
	PPP_PACKET *pp2;
	bool ret = false;
	// Validate arguments
	if (p == NULL || c == NULL)
	{
		return false;
	}

	pp = FUNC5(sizeof(PPP_PACKET));
	pp->Protocol = protocol;
	pp->IsControl = true;
	pp->Lcp = c;
	pp->Lcp->Id = p->NextId++;

	// Send the PPP packet
	if (FUNC3(p, pp) == false)
	{
		goto LABEL_ERROR;
	}

	// Receive a corresponding PPP packet
	pp2 = FUNC2(p, pp, 0, NULL, false, false);

	if (pp2 != NULL)
	{
		if (protocol == PPP_PROTOCOL_LCP || protocol == PPP_PROTOCOL_IPCP)
		{
			if (!FUNC4(pp2->Lcp->Code))
			{
				// A positive response is received
				ret = true;
			}
		}
	}

	FUNC1(pp2);
	FUNC0(pp);

	return ret;

LABEL_ERROR:
	FUNC0(pp);
	return false;
}