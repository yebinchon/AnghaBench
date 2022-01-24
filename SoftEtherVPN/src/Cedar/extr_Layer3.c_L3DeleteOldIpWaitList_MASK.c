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
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* PacketData; } ;
struct TYPE_10__ {int /*<<< orphan*/ * IpWaitList; } ;
struct TYPE_9__ {scalar_t__ Expire; TYPE_6__* Packet; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ L3PACKET ;
typedef  TYPE_2__ L3IF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 

void FUNC9(L3IF *f)
{
	UINT i;
	LIST *o = NULL;
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC5(f->IpWaitList);i++)
	{
		L3PACKET *p = FUNC4(f->IpWaitList, i);

		if (p->Expire <= FUNC8())
		{
			if (o == NULL)
			{
				o = FUNC6(NULL);
			}

			FUNC3(o, p);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC5(o);i++)
		{
			L3PACKET *p = FUNC4(o, i);

			FUNC0(f->IpWaitList, p);

			FUNC1(p->Packet->PacketData);
			FUNC2(p->Packet);
			FUNC1(p);
		}

		FUNC7(o);
	}
}