#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  SendID2_Buf; int /*<<< orphan*/  SendID1_Buf; int /*<<< orphan*/ * EtherIP; int /*<<< orphan*/ * L2TP; } ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_1__ IKE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(IKE_SERVER *ike, IKE_CLIENT *c)
{
	// Validate arguments
	if (c == NULL || ike == NULL)
	{
		return;
	}

	if (c->L2TP != NULL)
	{
		FUNC4(c->L2TP, true);
		FUNC2(c->L2TP);
	}

	if (c->EtherIP != NULL)
	{
		FUNC3(c->EtherIP);
	}

	FUNC1(c->SendID1_Buf);
	FUNC1(c->SendID2_Buf);

	FUNC0(c);
}