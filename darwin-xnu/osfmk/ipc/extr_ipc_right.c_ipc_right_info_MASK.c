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
typedef  int /*<<< orphan*/  mach_port_urefs_t ;
typedef  int /*<<< orphan*/  mach_port_type_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  scalar_t__ ipc_port_request_index_t ;
typedef  TYPE_1__* ipc_entry_t ;
typedef  int ipc_entry_bits_t ;
struct TYPE_4__ {int ie_bits; scalar_t__ ie_request; scalar_t__ ie_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ IE_REQ_NONE ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_TYPE_DEAD_NAME ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int MACH_PORT_TYPE_SEND_RIGHTS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC11(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry,
	mach_port_type_t	*typep,
	mach_port_urefs_t	*urefsp)
{
	ipc_port_t port;
	ipc_entry_bits_t bits;
	mach_port_type_t type = 0;
	ipc_port_request_index_t request;

	bits = entry->ie_bits;
	request = entry->ie_request;
	port = (ipc_port_t) entry->ie_object;

	if (bits & MACH_PORT_TYPE_RECEIVE) {
		FUNC3(FUNC2(port));

		if (request != IE_REQ_NONE) {
			FUNC5(port);
			FUNC3(FUNC4(port));
			type |= FUNC8(port, name, request);
			FUNC7(port);
		}
		FUNC10(space);

	} else if (bits & MACH_PORT_TYPE_SEND_RIGHTS) {
		/*
		 * validate port is still alive - if so, get request
		 * types while we still have it locked.  Otherwise,
		 * recapture the (now dead) bits.
		 */
		if (!FUNC9(space, port, name, entry)) {
			if (request != IE_REQ_NONE)
				type |= FUNC8(port, name, request);
			FUNC7(port);
			FUNC10(space);
		} else {
			bits = entry->ie_bits;
			FUNC3(FUNC0(bits) == MACH_PORT_TYPE_DEAD_NAME);
			FUNC10(space);
			FUNC6(port);
		}
	} else {
		FUNC10(space);
	}

	type |= FUNC0(bits);

	*typep = type;
	*urefsp = FUNC1(bits);
	return KERN_SUCCESS;
}