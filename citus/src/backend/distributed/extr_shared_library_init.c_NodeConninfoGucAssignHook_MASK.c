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
struct TYPE_4__ {char* val; int /*<<< orphan*/ * keyword; } ;
typedef  TYPE_1__ PQconninfoOption ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(const char *newval, void *extra)
{
	PQconninfoOption *optionArray = NULL;
	PQconninfoOption *option = NULL;

	if (newval == NULL)
	{
		newval = "";
	}

	optionArray = FUNC2(newval, NULL);
	if (optionArray == NULL)
	{
		FUNC4(FATAL, (FUNC6("cannot parse node_conninfo value"),
						FUNC5("The GUC check hook should prevent "
								  "all malformed values.")));
	}

	FUNC3();

	for (option = optionArray; option->keyword != NULL; option++)
	{
		if (option->val == NULL || option->val[0] == '\0')
		{
			continue;
		}

		FUNC0(option->keyword, option->val);
	}

	FUNC1(optionArray);
}