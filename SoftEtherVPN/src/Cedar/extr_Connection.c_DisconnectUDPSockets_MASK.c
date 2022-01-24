#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * BufferQueue; int /*<<< orphan*/ * s; } ;
struct TYPE_4__ {scalar_t__ Protocol; int /*<<< orphan*/ * FirstSock; TYPE_2__* Udp; int /*<<< orphan*/  Session; int /*<<< orphan*/  Cedar; scalar_t__ ServerMode; } ;
typedef  TYPE_1__ CONNECTION ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 scalar_t__ CONNECTION_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(CONNECTION *c)
{
	// Validate arguments
	if (c == NULL)
	{
		return;
	}
	if (c->Protocol != CONNECTION_UDP)
	{
		return;
	}

	// Delete entry
	if (c->ServerMode)
	{
		FUNC0(c->Cedar, c->Session);
	}

	// Delete the UDP structure
	if (c->Udp != NULL)
	{
		if (c->Udp->s != NULL)
		{
			FUNC6(c->Udp->s);
		}
		if (c->Udp->BufferQueue != NULL)
		{
			// Release of the queue
			BUF *b;
			while ((b = FUNC4(c->Udp->BufferQueue)))
			{
				FUNC3(b);
			}
			FUNC5(c->Udp->BufferQueue);
		}
		FUNC2(c->Udp);
		c->Udp = NULL;
	}

	if (c->FirstSock != NULL)
	{
		FUNC1(c->FirstSock);
		FUNC6(c->FirstSock);
		c->FirstSock = NULL;
	}
}