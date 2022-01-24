#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * Server; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ FARM_CONTROLLER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (char*,char*) ; 

PACK *FUNC20(FARM_CONTROLLER *f, PACK *p, char *taskname)
{
	PACK *ret;
	SERVER *s;
	// Validate arguments
	if (f == NULL || p == NULL || taskname == NULL)
	{
		return NULL;
	}

	ret = NULL;
	s = f->Server;

	if (FUNC19(taskname, "noop") == 0)
	{
		// NO OPERATION
		ret = FUNC1();
	}
	else
	{
		FUNC0("Task Called: [%s].\n", taskname);
		if (FUNC19(taskname, "createhub") == 0)
		{
			FUNC2(s, p);
			ret = FUNC1();
		}
		else if (FUNC19(taskname, "deletehub") == 0)
		{
			FUNC4(s, p);
			ret = FUNC1();
		}
		else if (FUNC19(taskname, "enumhub") == 0)
		{
			ret = FUNC1();
			FUNC9(s, ret, p);
		}
		else if (FUNC19(taskname, "updatehub") == 0)
		{
			FUNC18(s, p);
			ret = FUNC1();
		}
		else if (FUNC19(taskname, "createticket") == 0)
		{
			ret = FUNC3(s, p);
		}
		else if (FUNC19(taskname, "enumnat") == 0)
		{
			ret = FUNC13(s, p);
		}
		else if (FUNC19(taskname, "enumdhcp") == 0)
		{
			ret = FUNC8(s, p);
		}
		else if (FUNC19(taskname, "getnatstatus") == 0)
		{
			ret = FUNC15(s, p);
		}
		else if (FUNC19(taskname, "enumsession") == 0)
		{
			ret = FUNC14(s, p);
		}
		else if (FUNC19(taskname, "deletesession") == 0)
		{
			FUNC7(s, p);
			ret = FUNC1();
		}
		else if (FUNC19(taskname, "deletemactable") == 0)
		{
			FUNC6(s, p);
			ret = FUNC1();
		}
		else if (FUNC19(taskname, "deleteiptable") == 0)
		{
			FUNC5(s, p);
			ret = FUNC1();
		}
		else if (FUNC19(taskname, "enummactable") == 0)
		{
			ret = FUNC12(s, p);
		}
		else if (FUNC19(taskname, "enumiptable") == 0)
		{
			ret = FUNC10(s, p);
		}
		else if (FUNC19(taskname, "getsessionstatus") == 0)
		{
			ret = FUNC16(s, p);
		}
		else if (FUNC19(taskname, "enumlogfilelist") == 0)
		{
			ret = FUNC11(s, p);
		}
		else if (FUNC19(taskname, "readlogfile") == 0)
		{
			ret = FUNC17(s, p);
		}
	}

	return ret;
}