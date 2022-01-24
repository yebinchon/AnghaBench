#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Thread; } ;
struct TYPE_7__ {scalar_t__ Param; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ CNC_STATUS_PRINTER_WINDOW_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(SOCK *s)
{
	CNC_STATUS_PRINTER_WINDOW_PARAM *param;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	param = (CNC_STATUS_PRINTER_WINDOW_PARAM *)s->Param;

	// Disconnect the client socket 
	FUNC0(s);

	// Terminate the thread
	FUNC4(param->Thread, INFINITE);
	FUNC3(param->Thread);

	FUNC1(param);
	FUNC2(s);
}