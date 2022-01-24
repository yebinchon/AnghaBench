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
struct TYPE_4__ {void* SystemExpires; void* SystemId; int /*<<< orphan*/  Valid; } ;
typedef  TYPE_1__ RPC_EL_LICENSE_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(RPC_EL_LICENSE_STATUS *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(t, sizeof(RPC_EL_LICENSE_STATUS));

	t->Valid = FUNC0(p, "Valid");
	t->SystemId = FUNC1(p, "SystemId");
	t->SystemExpires = FUNC1(p, "SystemExpires");
}