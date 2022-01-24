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
struct TYPE_3__ {int /*<<< orphan*/ * Policy; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  Name; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SET_GROUP ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC5(PACK *p, RPC_SET_GROUP *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(p, "HubName", t->HubName);
	FUNC3(p, "Name", t->Name);
	FUNC4(p, "Realname", t->Realname);
	FUNC4(p, "Note", t->Note);
	FUNC1(p, &t->Traffic);

	if (t->Policy != NULL)
	{
		FUNC2(p, "UsePolicy", true);
		FUNC0(p, t->Policy);
	}
}