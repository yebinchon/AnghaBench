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
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_port_info_t ;
typedef  int /*<<< orphan*/  mach_port_flavor_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;

/* Variables and functions */
 int MACH_SEND_INVALID_DEST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC2(
	ipc_space_t task,
	mach_port_name_t name,
	mach_port_flavor_t flavor,
	mach_port_info_t port_info_out,
	mach_msg_type_number_t *port_info_outCnt)
{
	kern_return_t rv;

	rv = FUNC1(task, name, flavor,
			port_info_out, port_info_outCnt);

#ifdef __x86_64__
	/* REMOVE once XBS kernel has new trap */
	if (rv == ((1 << 24) | 40)) /* see mach/i386/syscall_sw.h */
		rv = MACH_SEND_INVALID_DEST;
#elif defined(__i386__)
	/* REMOVE once XBS kernel has new trap */
	if (rv == (kern_return_t)(-40))
		rv = MACH_SEND_INVALID_DEST;
#endif

	if (rv == MACH_SEND_INVALID_DEST)
		rv = FUNC0(task, name, flavor,
				port_info_out, port_info_outCnt);

	return (rv);
}