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
typedef  int /*<<< orphan*/  mach_port_seqno_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  mach_msg_trailer_type_t ;
typedef  int /*<<< orphan*/  mach_msg_trailer_info_t ;
typedef  int /*<<< orphan*/  mach_msg_size_t ;
struct TYPE_7__ {int /*<<< orphan*/  msgh_seqno; } ;
typedef  TYPE_1__ mach_msg_max_trailer_t ;
typedef  int /*<<< orphan*/  mach_msg_id_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip_messages; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_INVALID_NAME ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MACH_RCV_TRAILER_AUDIT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_NAME ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_RIGHT ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC8(
	ipc_space_t			space,
	mach_port_name_t		name,
	mach_msg_trailer_type_t 	trailer_type,
	mach_port_seqno_t		*seqnop,
	mach_msg_size_t			*msg_sizep,
	mach_msg_id_t			*msg_idp,
	mach_msg_trailer_info_t 	trailer_infop,
	mach_msg_type_number_t		*trailer_sizep)
{
	ipc_port_t port;
	kern_return_t kr;
	boolean_t found;
	mach_msg_max_trailer_t max_trailer;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC1(name))
		return KERN_INVALID_RIGHT;

	/*
	 * We don't allow anything greater than the audit trailer - to avoid
	 * leaking the context pointer and to avoid variable-sized context issues.
	 */
	if (FUNC0(trailer_type) > MACH_RCV_TRAILER_AUDIT ||
	    FUNC2(TRUE, trailer_type) > *trailer_sizep) {
		FUNC6(name, 0, 0, kGUARD_EXC_INVALID_VALUE);
		return KERN_INVALID_VALUE;
	}

	*trailer_sizep = FUNC2(TRUE, trailer_type);

	kr = FUNC5(space, name, &port);
	if (kr != KERN_SUCCESS) {
		FUNC6(name, 0, 0,
		                          ((KERN_INVALID_NAME == kr) ?
		                           kGUARD_EXC_INVALID_NAME :
		                           kGUARD_EXC_INVALID_RIGHT));
		return kr;
	}

	/* Port locked and active */

	found = FUNC4(&port->ip_messages, seqnop,
				msg_sizep, msg_idp, &max_trailer, NULL);
	FUNC3(port);

	if (found != TRUE)
		return KERN_FAILURE;

	max_trailer.msgh_seqno = *seqnop;
	FUNC7(trailer_infop, &max_trailer, *trailer_sizep);

	return KERN_SUCCESS;
}