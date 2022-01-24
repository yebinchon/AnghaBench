#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  ListenerList; } ;
struct TYPE_8__ {scalar_t__ Protocol; int /*<<< orphan*/  lock; TYPE_1__* Sock; } ;
struct TYPE_7__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ LISTENER ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LISTENER_INPROC ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

SOCK *FUNC7(CEDAR *c)
{
	SOCK *s = NULL;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	FUNC4(c->ListenerList);
	{
		UINT i;
		for (i = 0;i < FUNC2(c->ListenerList);i++)
		{
			LISTENER *r = FUNC1(c->ListenerList, i);

			if (r->Protocol == LISTENER_INPROC)
			{
				FUNC3(r->lock);
				{
					s = r->Sock;

					if (s != NULL)
					{
						FUNC0(s->ref);
					}
				}
				FUNC5(r->lock);
				break;
			}
		}
	}
	FUNC6(c->ListenerList);

	return s;
}