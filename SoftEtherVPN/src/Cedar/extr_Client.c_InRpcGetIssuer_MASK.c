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
struct TYPE_4__ {void* issuer_x; int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ RPC_GET_ISSUER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_GET_ISSUER *c, PACK *p)
{
	BUF *b;
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC4(c, sizeof(RPC_GET_ISSUER));
	b = FUNC3(p, "x");
	if (b != NULL)
	{
		if (c->x != NULL)
		{
			FUNC2(c->x);
		}
		c->x = FUNC0(b, false);
		FUNC1(b);
	}

	b = FUNC3(p, "issuer_x");
	if (b != NULL)
	{
		c->issuer_x = FUNC0(b, false);
		FUNC1(b);
	}
}