#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ipc_port_t ;

/* Variables and functions */
#define  IKOT_HOST_NOTIFY 130 
#define  IKOT_NAMED_ENTRY 129 
#define  IKOT_TIMER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(
	ipc_port_t		port)
{
	switch (FUNC1(port)) {

	case IKOT_TIMER:
		FUNC3(port);
		break;

	case IKOT_NAMED_ENTRY:
		FUNC2(port);
		break;

	case IKOT_HOST_NOTIFY:
		FUNC0(port);
		break;

	default:
		break;
	}
}