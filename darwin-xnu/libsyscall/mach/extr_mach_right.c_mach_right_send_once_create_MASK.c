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
typedef  int /*<<< orphan*/  mach_right_send_once_t ;
struct TYPE_3__ {int /*<<< orphan*/  mrr_name; } ;
typedef  TYPE_1__ mach_right_recv_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_MSG_TYPE_MAKE_SEND_ONCE ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

mach_right_send_once_t
FUNC4(mach_right_recv_t r)
{
	mach_msg_type_name_t right = 0;
	mach_port_t so = MACH_PORT_NULL;
	kern_return_t kr = FUNC1(FUNC3(), r.mrr_name,
			MACH_MSG_TYPE_MAKE_SEND_ONCE, &so, &right);
	FUNC0("create send-once right", kr);

	return FUNC2(so);
}