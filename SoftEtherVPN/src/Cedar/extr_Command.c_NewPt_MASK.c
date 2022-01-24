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
struct TYPE_4__ {int /*<<< orphan*/  CmdLine; int /*<<< orphan*/ * Console; } ;
typedef  TYPE_1__ PT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 

PT *FUNC3(CONSOLE *c, wchar_t *cmdline)
{
	PT *pt;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	if (FUNC1(cmdline))
	{
		cmdline = NULL;
	}

	pt = FUNC2(sizeof(PT));
	pt->Console = c;
	pt->CmdLine = FUNC0(cmdline);

	return pt;
}