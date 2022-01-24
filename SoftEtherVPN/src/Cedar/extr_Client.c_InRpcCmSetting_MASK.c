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
struct TYPE_4__ {int /*<<< orphan*/  HashedPassword; void* LockMode; void* EasyMode; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CM_SETTING ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(CM_SETTING *c, PACK *p)
{
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC2(c, sizeof(CM_SETTING));
	c->EasyMode = FUNC0(p, "EasyMode");
	c->LockMode = FUNC0(p, "LockMode");
	FUNC1(p, "HashedPassword", c->HashedPassword, sizeof(c->HashedPassword));
}