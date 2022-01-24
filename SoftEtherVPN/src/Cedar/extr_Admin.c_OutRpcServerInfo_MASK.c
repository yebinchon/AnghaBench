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
struct TYPE_3__ {int /*<<< orphan*/  OsInfo; int /*<<< orphan*/  ServerFamilyName; int /*<<< orphan*/  ServerBuildDate; int /*<<< orphan*/  ServerType; int /*<<< orphan*/  ServerHostName; int /*<<< orphan*/  ServerBuildInt; int /*<<< orphan*/  ServerVerInt; int /*<<< orphan*/  ServerBuildInfoString; int /*<<< orphan*/  ServerVersionString; int /*<<< orphan*/  ServerProductName; } ;
typedef  TYPE_1__ RPC_SERVER_INFO ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, RPC_SERVER_INFO *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "ServerProductName", t->ServerProductName);
	FUNC2(p, "ServerVersionString", t->ServerVersionString);
	FUNC2(p, "ServerBuildInfoString", t->ServerBuildInfoString);
	FUNC1(p, "ServerVerInt", t->ServerVerInt);
	FUNC1(p, "ServerBuildInt", t->ServerBuildInt);
	FUNC2(p, "ServerHostName", t->ServerHostName);
	FUNC1(p, "ServerType", t->ServerType);
	FUNC3(p, "ServerBuildDate", t->ServerBuildDate);
	FUNC2(p, "ServerFamilyName", t->ServerFamilyName);
	FUNC0(p, &t->OsInfo);
}