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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int Id; int /*<<< orphan*/  StringA; int /*<<< orphan*/ * String; } ;
typedef  TYPE_1__ VI_STRING ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ViCompareString ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  string_table ; 

void FUNC6()
{
	UINT i, n;
	HINSTANCE hInst = FUNC1(NULL);

	string_table = FUNC3(ViCompareString);

	n = 0;
	for (i = 1;;i++)
	{
		wchar_t *str = FUNC4(hInst, i);
		if (str != NULL)
		{
			VI_STRING *s;
			n = 0;

			s = FUNC5(sizeof(VI_STRING));
			s->Id = i;
			s->String = str;
			s->StringA = FUNC0(str);

			FUNC2(string_table, s);
		}
		else
		{
			n++;
			if (n >= 1500)
			{
				break;
			}
		}
	}
}