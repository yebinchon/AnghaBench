#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ DYN_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/ * g_dyn_value_list ; 

void FUNC8(char *name, UINT64 value)
{
	// Validate arguments
	if (name == NULL)
	{
		return;
	}

	if (g_dyn_value_list == NULL)
	{
		return;
	}

	FUNC3(g_dyn_value_list);
	{
		UINT i;
		DYN_VALUE *v = NULL;

		for (i = 0; i < FUNC2(g_dyn_value_list);i++)
		{
			DYN_VALUE *vv = FUNC1(g_dyn_value_list, i);

			if (FUNC4(vv->Name, name) == 0)
			{
				v = vv;
				break;
			}
		}

		if (v == NULL)
		{
			v = FUNC7(sizeof(DYN_VALUE));
			FUNC5(v->Name, sizeof(v->Name), name);

			FUNC0(g_dyn_value_list, v);
		}

		v->Value = value;
	}
	FUNC6(g_dyn_value_list);
}