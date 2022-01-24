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
typedef  int thread_destruct_special_reply_port_rights_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
#define  THREAD_SPECIAL_REPLY_PORT_ALL 130 
#define  THREAD_SPECIAL_REPLY_PORT_RECEIVE_ONLY 129 
#define  THREAD_SPECIAL_REPLY_PORT_SEND_ONLY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

kern_return_t
FUNC3(
		mach_port_name_t port,
		thread_destruct_special_reply_port_rights_t rights)
{
	switch (rights) {
	case THREAD_SPECIAL_REPLY_PORT_ALL:
		return FUNC1(FUNC2(), port, -1, 0);

	case THREAD_SPECIAL_REPLY_PORT_RECEIVE_ONLY:
		return FUNC1(FUNC2(), port, 0, 0);

	case THREAD_SPECIAL_REPLY_PORT_SEND_ONLY:
		return FUNC0(FUNC2(), port);

	default:
		return KERN_INVALID_ARGUMENT;
	}
}