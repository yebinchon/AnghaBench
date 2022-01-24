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
struct TYPE_4__ {int /*<<< orphan*/  AuthType; } ;
typedef  TYPE_1__ USER ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HUB ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

UINT FUNC4(HUB *h, char *username)
{
	UINT authtype;
	// Validate arguments
	if (h == NULL || username == NULL)
	{
		return INFINITE;
	}

	FUNC1(h);
	{
		USER *u = FUNC0(h, username);
		if (u == NULL)
		{
			authtype = INFINITE;
		}
		else
		{
			authtype = u->AuthType;
			FUNC3(u);
		}
	}
	FUNC2(h);

	return authtype;
}