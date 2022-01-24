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
struct TYPE_3__ {int /*<<< orphan*/  HubType; int /*<<< orphan*/  HubOption; int /*<<< orphan*/  AdminPasswordPlainText; int /*<<< orphan*/  Online; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_CREATE_HUB ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC5(PACK *p, RPC_CREATE_HUB *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(p, "HubName", t->HubName);
	FUNC2(p, "HashedPassword", t->HashedPassword, sizeof(t->HashedPassword));
	FUNC2(p, "SecurePassword", t->SecurePassword, sizeof(t->SecurePassword));
	FUNC1(p, "Online", t->Online);
	FUNC4(p, "AdminPasswordPlainText", t->AdminPasswordPlainText);
	FUNC0(p, &t->HubOption);
	FUNC3(p, "HubType", t->HubType);
}