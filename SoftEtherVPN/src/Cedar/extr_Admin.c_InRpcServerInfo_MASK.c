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
struct TYPE_4__ {int /*<<< orphan*/  OsInfo; int /*<<< orphan*/  ServerFamilyName; int /*<<< orphan*/  ServerBuildDate; void* ServerType; int /*<<< orphan*/  ServerHostName; void* ServerBuildInt; void* ServerVerInt; int /*<<< orphan*/  ServerBuildInfoString; int /*<<< orphan*/  ServerVersionString; int /*<<< orphan*/  ServerProductName; } ;
typedef  TYPE_1__ RPC_SERVER_INFO ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_SERVER_INFO *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_SERVER_INFO));

	FUNC3(p, "ServerProductName", t->ServerProductName, sizeof(t->ServerProductName));
	FUNC3(p, "ServerVersionString", t->ServerVersionString, sizeof(t->ServerVersionString));
	FUNC3(p, "ServerBuildInfoString", t->ServerBuildInfoString, sizeof(t->ServerBuildInfoString));
	t->ServerVerInt = FUNC1(p, "ServerVerInt");
	t->ServerBuildInt = FUNC1(p, "ServerBuildInt");
	FUNC3(p, "ServerHostName", t->ServerHostName, sizeof(t->ServerHostName));
	t->ServerType = FUNC1(p, "ServerType");
	t->ServerBuildDate = FUNC2(p, "ServerBuildDate");
	FUNC3(p, "ServerFamilyName", t->ServerFamilyName, sizeof(t->ServerFamilyName));
	FUNC0(&t->OsInfo, p);
}