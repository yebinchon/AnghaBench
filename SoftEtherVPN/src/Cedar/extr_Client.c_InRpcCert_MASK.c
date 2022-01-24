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
struct TYPE_4__ {int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ RPC_CERT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(RPC_CERT *c, PACK *p)
{
	BUF *b;
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC3(c, sizeof(RPC_CERT));
	b = FUNC2(p, "x");
	if (b == NULL)
	{
		return;
	}

	c->x = FUNC0(b, false);
	FUNC1(b);
}