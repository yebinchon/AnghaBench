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
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  hubname ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  RPC_ENUM_LOG_FILE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

PACK *FUNC6(SERVER *s, PACK *p)
{
	RPC_ENUM_LOG_FILE t;
	PACK *ret;
	char hubname[MAX_HUBNAME_LEN + 1];
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return NULL;
	}

	FUNC3(p, "HubName", hubname, sizeof(hubname));

	FUNC5(&t, sizeof(t));

	FUNC4(s, hubname, &t);

	ret = FUNC1();

	FUNC2(ret, &t);
	FUNC0(&t);

	return ret;
}