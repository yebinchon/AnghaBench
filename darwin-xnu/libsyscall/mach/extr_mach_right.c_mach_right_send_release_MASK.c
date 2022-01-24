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
struct TYPE_3__ {int /*<<< orphan*/  mrs_name; } ;
typedef  TYPE_1__ mach_right_send_t ;
typedef  int kern_return_t ;

/* Variables and functions */
 int KERN_FAILURE ; 
#define  KERN_INVALID_RIGHT 128 
 int /*<<< orphan*/  MACH_PORT_RIGHT_DEAD_NAME ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_SEND ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(mach_right_send_t s)
{
	kern_return_t kr = KERN_FAILURE;

	kr = FUNC1(FUNC2(), s.mrs_name,
			MACH_PORT_RIGHT_SEND, -1);
	switch (kr) {
	case 0:
		break;
	case KERN_INVALID_RIGHT:
		kr = FUNC1(FUNC2(), s.mrs_name,
				MACH_PORT_RIGHT_DEAD_NAME, -1);
		FUNC0("release dead name", kr);
		break;
	default:
		FUNC0("release send right", kr);
	}
}