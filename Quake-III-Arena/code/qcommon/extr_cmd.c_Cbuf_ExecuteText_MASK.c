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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
#define  EXEC_APPEND 130 
#define  EXEC_INSERT 129 
#define  EXEC_NOW 128 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void FUNC6 (int exec_when, const char *text)
{
	switch (exec_when)
	{
	case EXEC_NOW:
		if (text && FUNC5(text) > 0) {
			FUNC3 (text);
		} else {
			FUNC1();
		}
		break;
	case EXEC_INSERT:
		FUNC2 (text);
		break;
	case EXEC_APPEND:
		FUNC0 (text);
		break;
	default:
		FUNC4 (ERR_FATAL, "Cbuf_ExecuteText: bad exec_when");
	}
}