#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  RPC_READ_LOG_FILE ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

bool FUNC7(SERVER *s, FARM_MEMBER *f, RPC_READ_LOG_FILE *t)
{
	PACK *p;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return false;
	}

	p = FUNC3();
	FUNC4(p, t);
	FUNC1(t);
	FUNC6(t, sizeof(RPC_READ_LOG_FILE));

	p = FUNC5(f, p, "readlogfile");

	if (p == NULL)
	{
		return false;
	}

	FUNC2(t, p);
	FUNC0(p);

	return true;
}