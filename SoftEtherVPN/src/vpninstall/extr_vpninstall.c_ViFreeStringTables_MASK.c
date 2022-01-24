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
struct TYPE_4__ {struct TYPE_4__* StringA; struct TYPE_4__* String; } ;
typedef  TYPE_1__ VI_STRING ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * string_table ; 

void FUNC4()
{
	UINT i;
	if (string_table == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(string_table);i++)
	{
		VI_STRING *s = FUNC1(string_table, i);

		FUNC0(s->String);
		FUNC0(s->StringA);
		FUNC0(s);
	}

	FUNC3(string_table);
	string_table = NULL;
}