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
struct TYPE_4__ {scalar_t__ Port; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  Listener; void* AdminSockList; void* AdminThreadList; } ;
typedef  TYPE_1__ EL ;

/* Variables and functions */
 scalar_t__ EL_ADMIN_PORT ; 
 int /*<<< orphan*/  ElListenerProc ; 
 int /*<<< orphan*/  LISTENER_TCP ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC2(EL *e)
{
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	e->AdminThreadList = FUNC0(NULL);
	e->AdminSockList = FUNC0(NULL);

	e->Listener = FUNC1(e->Cedar, LISTENER_TCP, e->Port == 0 ? EL_ADMIN_PORT : e->Port,
		ElListenerProc, e);
}