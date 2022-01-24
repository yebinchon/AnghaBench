#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_10__ {int /*<<< orphan*/  Rows; int /*<<< orphan*/  Columns; } ;
struct TYPE_9__ {char* String; } ;
struct TYPE_8__ {char** Strings; } ;
typedef  TYPE_1__ CTR ;
typedef  TYPE_2__ CTC ;
typedef  TYPE_3__ CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,char*) ; 
 TYPE_3__* FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(CT *ct, CONSOLE *c)
{
	CT *t;
	UINT i, j;
	// Validate arguments
	if (ct == NULL || c == NULL)
	{
		return;
	}

	t = FUNC2();
	for (i = 0;i < FUNC4(ct->Rows);i++)
	{
		CTR *row = FUNC3(ct->Rows, i);

		for (j = 0;j < FUNC4(ct->Columns);j++)
		{
			CTC *column = FUNC3(ct->Columns, j);

			FUNC1(t, column->String, row->Strings[j]);
		}

		if (i != (FUNC4(ct->Rows) - 1))
		{
			FUNC1(t, L"---", L"---");
		}
	}

	FUNC0(t, c);
}