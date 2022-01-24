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
struct TYPE_3__ {int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  LockMode; int /*<<< orphan*/  EasyMode; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CM_SETTING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

void FUNC2(PACK *p, CM_SETTING *c)
{
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "EasyMode", c->EasyMode);
	FUNC0(p, "LockMode", c->LockMode);
	FUNC1(p, "HashedPassword", c->HashedPassword, sizeof(c->HashedPassword));
}