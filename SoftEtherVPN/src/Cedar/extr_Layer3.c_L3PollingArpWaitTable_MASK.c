#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ Expire; scalar_t__ LastSentTime; int /*<<< orphan*/  IpAddress; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ArpWaitTable; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ L3IF ;
typedef  TYPE_2__ L3ARPWAIT ;

/* Variables and functions */
 scalar_t__ ARP_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
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

	for (i = 0;i < FUNC5(f->ArpWaitTable);i++)
	{
		L3ARPWAIT *w = FUNC4(f->ArpWaitTable, i);

		if (w->Expire <= FUNC8())
		{
			// The ARP request entry is expired
			if (o == NULL)
			{
				o = FUNC6(NULL);
			}

			FUNC2(o, w);
		}
		else if ((w->LastSentTime + ARP_REQUEST_TIMEOUT) <= FUNC8())
		{
			// Send a next ARP request packet
			w->LastSentTime = FUNC8();

			FUNC3(f, w->IpAddress);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC5(o);i++)
		{
			L3ARPWAIT *w = FUNC4(o, i);

			FUNC0(f->ArpWaitTable, w);
			FUNC1(w);
		}

		FUNC7(o);
	}
}