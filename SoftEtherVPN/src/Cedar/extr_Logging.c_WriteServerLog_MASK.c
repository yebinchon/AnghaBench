#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {TYPE_1__* Server; } ;
struct TYPE_6__ {int /*<<< orphan*/  Logger; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ SYSLOG_NONE ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

void FUNC5(CEDAR *c, wchar_t *str)
{
	SERVER *s;
	// Validate arguments
	if (c == NULL || str == NULL)
	{
		return;
	}

	s = c->Server;
	if (s == NULL)
	{
		return;
	}

	if (FUNC1())
	{
		FUNC4(L"LOG: %s\n", str);
	}

	if (FUNC2(s) != SYSLOG_NONE)
	{
		FUNC3(s, "SERVER_LOG", NULL, str);
	}
	else
	{
		FUNC0(s->Logger, str);
	}
}