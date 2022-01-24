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
struct TYPE_4__ {int /*<<< orphan*/  Traffic; int /*<<< orphan*/ * Policy; void* UpdatedTime; void* CreatedTime; void* AuthData; scalar_t__ AuthType; int /*<<< orphan*/ * Group; int /*<<< orphan*/ * GroupName; void* Note; void* RealName; int /*<<< orphan*/  Name; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ USER ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ AUTHTYPE_ANONYMOUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 () ; 
 TYPE_1__* FUNC6 (int) ; 

USER *FUNC7(char *name, wchar_t *realname, wchar_t *note, UINT authtype, void *authdata)
{
	USER *u;
	// Validate arguments
	if (name == NULL || realname == NULL || note == NULL)
	{
		return NULL;
	}
	if (authtype != AUTHTYPE_ANONYMOUS && authdata == NULL)
	{
		return NULL;
	}

	u = FUNC6(sizeof(USER));
	u->lock = FUNC2();
	u->ref = FUNC3();
	u->Name = FUNC0(name);
	u->RealName = FUNC1(realname);
	u->Note = FUNC1(note);
	u->GroupName = NULL;
	u->Group = NULL;
	u->AuthType = authtype;
	u->AuthData = authdata;
	u->CreatedTime = FUNC5();
	u->UpdatedTime = FUNC5();

	u->Policy = NULL;
	u->Traffic = FUNC4();

	return u;
}