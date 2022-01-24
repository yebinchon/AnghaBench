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
typedef  scalar_t__ mach_port_t ;
typedef  int mach_port_right_t ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ name; scalar_t__ prealloc; } ;
typedef  TYPE_1__ mach_port_qos_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ mach_msg_size_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_pset_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  scalar_t__ ipc_kmsg_t ;

/* Variables and functions */
 scalar_t__ IKM_NULL ; 
 scalar_t__ IS_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_TASK ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ MACH_MSG_SIZE_MAX ; 
 scalar_t__ MACH_PORT_NULL ; 
#define  MACH_PORT_RIGHT_DEAD_NAME 130 
#define  MACH_PORT_RIGHT_PORT_SET 129 
#define  MACH_PORT_RIGHT_RECEIVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_TRAILER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC11(
	ipc_space_t		space,
	mach_port_right_t	right,
	mach_port_t		proto,
	mach_port_qos_t		*qosp,
	mach_port_name_t	*namep)
{
	ipc_kmsg_t		kmsg = IKM_NULL;
	kern_return_t		kr;

	if (space == IS_NULL)
		return (KERN_INVALID_TASK);

	if (proto != MACH_PORT_NULL)
		return (KERN_INVALID_VALUE);

	if (qosp->name) {
		if (!FUNC0 (*namep))
			return (KERN_INVALID_VALUE);
	}

	if (qosp->prealloc) {
		if (qosp->len > MACH_MSG_SIZE_MAX - MAX_TRAILER_SIZE) {
			return KERN_RESOURCE_SHORTAGE;
		} else {
			mach_msg_size_t size = qosp->len + MAX_TRAILER_SIZE;

			if (right != MACH_PORT_RIGHT_RECEIVE) {
				return (KERN_INVALID_VALUE);
			}

			kmsg = (ipc_kmsg_t)FUNC3(size);
			if (kmsg == IKM_NULL) {
				return (KERN_RESOURCE_SHORTAGE);
			}
		}
	}

	switch (right) {
	    case MACH_PORT_RIGHT_RECEIVE:
	    {
		ipc_port_t	port;

		if (qosp->name)
			kr = FUNC7(space, *namep, &port);
		else
			kr = FUNC6(space, namep, &port);
		if (kr == KERN_SUCCESS) {
			if (kmsg != IKM_NULL) 
				FUNC4(kmsg, port);

			FUNC1(port);

		} else if (kmsg != IKM_NULL)
			FUNC2(kmsg);
		break;
	    }

	    case MACH_PORT_RIGHT_PORT_SET:
	    {
		ipc_pset_t	pset;

		if (qosp->name)
			kr = FUNC9(space, *namep, &pset);
		else
			kr = FUNC8(space, namep, &pset);
		if (kr == KERN_SUCCESS)
			FUNC10(pset);
		break;
	    }

	    case MACH_PORT_RIGHT_DEAD_NAME:
		kr = FUNC5(space, namep);
		break;

	    default:
		kr = KERN_INVALID_VALUE;
		break;
	}

	return (kr);
}