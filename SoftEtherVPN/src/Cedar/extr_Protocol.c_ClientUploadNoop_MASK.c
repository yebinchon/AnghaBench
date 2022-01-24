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
struct TYPE_3__ {int /*<<< orphan*/  FirstSock; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(CONNECTION *c)
{
	PACK *p;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	p = FUNC4(0);
	FUNC3(p, "noop", 1);
	(void)FUNC2(c->FirstSock, p);
	FUNC0(p);

	p = FUNC1(c->FirstSock);
	if (p != NULL)
	{
		FUNC0(p);
	}
}