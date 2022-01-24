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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_5__ {int /*<<< orphan*/ * String; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ VI_STRING ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  string_table ; 

wchar_t *FUNC4(UINT id)
{
	VI_STRING t, *s;
	wchar_t *ret = NULL;

	FUNC3(&t, sizeof(t));
	t.Id = id;

	FUNC0(string_table);
	{
		s = FUNC1(string_table, &t);

		if (s != NULL)
		{
			ret = s->String;
		}
	}
	FUNC2(string_table);

	return ret;
}