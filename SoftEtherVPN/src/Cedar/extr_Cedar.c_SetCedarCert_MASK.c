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
typedef  int /*<<< orphan*/  X ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ServerK; int /*<<< orphan*/ * ServerX; } ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(CEDAR *c, X *server_x, K *server_k)
{
	// Validate arguments
	if (server_x == NULL || server_k == NULL)
	{
		return;
	}

	FUNC4(c->lock);
	{
		if (c->ServerX != NULL)
		{
			FUNC3(c->ServerX);
		}

		if (c->ServerK != NULL)
		{
			FUNC2(c->ServerK);
		}

		c->ServerX = FUNC1(server_x);
		c->ServerK = FUNC0(server_k);
	}
	FUNC5(c->lock);
}