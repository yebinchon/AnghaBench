#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_13__ {TYPE_1__* PacketData; } ;
struct TYPE_12__ {int /*<<< orphan*/ * IpWaitList; } ;
struct TYPE_11__ {scalar_t__ NextHopIp; TYPE_7__* Packet; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ L3PACKET ;
typedef  TYPE_2__ L3IF ;
typedef  int /*<<< orphan*/  L3ARPENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(L3IF *f, UCHAR *mac, UINT ip, L3ARPENTRY *a)
{
	UINT i;
	LIST *o = NULL;
	// Validate arguments
	if (f == NULL || mac == NULL || a == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC6(f->IpWaitList);i++)
	{
		L3PACKET *p = FUNC5(f->IpWaitList, i);

		if (p->NextHopIp == ip)
		{
			if (o == NULL)
			{
				o = FUNC7(NULL);
			}
			FUNC0(o, p);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC6(o);i++)
		{
			L3PACKET *p = FUNC5(o, i);

			// Transmission
			FUNC4(f, a, p);

			FUNC1(f->IpWaitList, p);
			FUNC2(p->Packet->PacketData);
			FUNC3(p->Packet);
			FUNC2(p);
		}

		FUNC8(o);
	}
}