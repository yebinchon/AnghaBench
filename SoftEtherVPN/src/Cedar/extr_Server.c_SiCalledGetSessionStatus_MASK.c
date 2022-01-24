#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_9__ {int ServerAdmin; int /*<<< orphan*/ * Server; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  TYPE_1__ RPC_SESSION_STATUS ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ ADMIN ;

/* Variables and functions */
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

PACK *FUNC6(SERVER *s, PACK *p)
{
	RPC_SESSION_STATUS t;
	ADMIN a;
	PACK *ret;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return NULL;
	}

	FUNC5(&t, sizeof(t));
	FUNC1(&t, p);

	FUNC5(&a, sizeof(a));
	a.Server = s;
	a.ServerAdmin = true;

	if (FUNC4(&a, &t) != ERR_NO_ERROR)
	{
		FUNC0(&t);
		return NULL;
	}

	ret = FUNC2();

	FUNC3(ret, &t);

	FUNC0(&t);

	return ret;
}