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
struct TYPE_3__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  Ip; } ;
typedef  TYPE_1__ QUERYIPTHREAD ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

bool FUNC5(QUERYIPTHREAD *t, IP *ip)
{
	bool ret = false;
	FUNC4(ip, sizeof(IP));
	// Validate arguments
	if (t == NULL || ip == NULL)
	{
		return false;
	}

	FUNC2(t->Lock);

	if (FUNC1(&t->Ip, sizeof(IP)))
	{
		ret = false;
	}
	else
	{
		FUNC0(ip, &t->Ip, sizeof(IP));
	}

	FUNC3(t->Lock);

	return ret;
}