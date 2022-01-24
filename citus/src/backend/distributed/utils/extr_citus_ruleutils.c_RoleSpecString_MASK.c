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
struct TYPE_3__ {int roletype; char const* rolename; } ;
typedef  TYPE_1__ RoleSpec ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char const* FUNC2 (int /*<<< orphan*/ ,int) ; 
#define  ROLESPEC_CSTRING 131 
#define  ROLESPEC_CURRENT_USER 130 
#define  ROLESPEC_PUBLIC 129 
#define  ROLESPEC_SESSION_USER 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 char const* FUNC4 (char const*) ; 

const char *
FUNC5(RoleSpec *spec, bool withQuoteIdendifier)
{
	switch (spec->roletype)
	{
		case ROLESPEC_CSTRING:
		{
			return withQuoteIdendifier ?
				   FUNC4(spec->rolename) :
				   spec->rolename;
		}

		case ROLESPEC_CURRENT_USER:
		{
			return withQuoteIdendifier ?
				   FUNC4(FUNC2(FUNC1(), false)) :
				   FUNC2(FUNC1(), false);
		}

		case ROLESPEC_SESSION_USER:
		{
			return withQuoteIdendifier ?
				   FUNC4(FUNC2(FUNC0(), false)) :
				   FUNC2(FUNC0(), false);
		}

		case ROLESPEC_PUBLIC:
		{
			return "PUBLIC";
		}

		default:
		{
			FUNC3(ERROR, "unexpected role type %d", spec->roletype);
		}
	}
}