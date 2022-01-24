#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  RecvQueue; int /*<<< orphan*/  SendQueue; } ;
typedef  int /*<<< orphan*/  PKT ;
typedef  TYPE_1__ NATIVE_NAT ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(NATIVE_NAT *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	FUNC3(t->SendQueue);
	{
		while (true)
		{
			BLOCK *b = FUNC2(t->SendQueue);

			if (b == NULL)
			{
				break;
			}

			FUNC0(b);
		}
	}
	FUNC4(t->SendQueue);

	FUNC3(t->RecvQueue);
	{
		while (true)
		{
			PKT *p = FUNC2(t->RecvQueue);

			if (p == NULL)
			{
				break;
			}

			FUNC1(p);
		}
	}
	FUNC4(t->RecvQueue);
}