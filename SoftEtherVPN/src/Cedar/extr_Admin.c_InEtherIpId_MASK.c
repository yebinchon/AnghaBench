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
struct TYPE_4__ {int /*<<< orphan*/  Password; int /*<<< orphan*/  UserName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Id; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ ETHERIP_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(ETHERIP_ID *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(t, sizeof(ETHERIP_ID));

	FUNC0(p, "Id", t->Id, sizeof(t->Id));
	FUNC0(p, "HubName", t->HubName, sizeof(t->HubName));
	FUNC0(p, "UserName", t->UserName, sizeof(t->UserName));
	FUNC0(p, "Password", t->Password, sizeof(t->Password));
}