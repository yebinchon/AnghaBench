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
struct TYPE_3__ {int /*<<< orphan*/ * x; int /*<<< orphan*/  Key; } ;
typedef  TYPE_1__ RPC_GET_CA ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(PACK *p, RPC_GET_CA *c)
{
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "Key", c->Key);

	if (c->x != NULL)
	{
		BUF *b = FUNC3(c->x, false);

		FUNC1(p, "x", b);

		FUNC0(b);
	}
}