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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  DYN_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * g_dyn_value_list ; 

void FUNC4()
{
	UINT i;
	if (g_dyn_value_list == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(g_dyn_value_list);i++)
	{
		DYN_VALUE *d = FUNC1(g_dyn_value_list, i);

		FUNC0(d);
	}

	FUNC3(g_dyn_value_list);

	g_dyn_value_list = NULL;
}