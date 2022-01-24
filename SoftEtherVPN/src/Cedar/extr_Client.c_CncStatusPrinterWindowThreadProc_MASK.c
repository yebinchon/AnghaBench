#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Session; TYPE_1__* Thread; int /*<<< orphan*/ * Sock; } ;
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ THREAD ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ CNC_STATUS_PRINTER_WINDOW_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(THREAD *thread, void *param)
{
	CNC_STATUS_PRINTER_WINDOW_PARAM *pp;
	SOCK *sock;
	PACK *p;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	pp = (CNC_STATUS_PRINTER_WINDOW_PARAM *)param;
	sock = pp->Sock;
	pp->Thread = thread;
	FUNC0(pp->Thread->ref);

	FUNC2(thread);

	p = FUNC3(sock);
	if (p != NULL)
	{
		// Stop the session
		FUNC4(pp->Session, true);

		FUNC1(p);
	}
}