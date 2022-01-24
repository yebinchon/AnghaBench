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

/* Variables and functions */
 int /*<<< orphan*/  SERVER_DEF_PORTS_1 ; 
 int /*<<< orphan*/  SERVER_DEF_PORTS_2 ; 
 int /*<<< orphan*/  SERVER_DEF_PORTS_3 ; 
 int /*<<< orphan*/  SERVER_DEF_PORTS_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC1(s);
	{
		{
			// Register the 4 ports (443, 992, 1194, 8888) as the default port
			FUNC0(s, SERVER_DEF_PORTS_1, true);
			FUNC0(s, SERVER_DEF_PORTS_2, true);
			FUNC0(s, SERVER_DEF_PORTS_3, true);
			FUNC0(s, SERVER_DEF_PORTS_4, true);
		}
	}
	FUNC2(s);
}