#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct knote {int dummy; } ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_1__* ipc_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {struct knote* ith_knote; } ;
struct TYPE_7__ {int ie_bits; scalar_t__ ie_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ IOT_PORT ; 
 scalar_t__ IO_NULL ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ITS_SIZE_NONE ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_PORT_SEND_ONCE ; 
 scalar_t__ MACH_PORT_TYPE_NONE ; 
 int MACH_PORT_TYPE_SEND_RECEIVE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_6__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct knote*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC19(
	ipc_space_t		space,
	ipc_object_t		object,
	mach_msg_type_name_t	msgt_name,
	boolean_t		overflow,
	mach_port_name_t	*namep)
{
	struct knote *kn = FUNC5()->ith_knote;
	mach_port_name_t name;
	ipc_entry_t entry;
	kern_return_t kr;

	FUNC4(FUNC2(object));
	FUNC4(FUNC9(object) == IOT_PORT);

	if (FUNC3(kn, msgt_name)) {
		FUNC6(kn,
				msgt_name, (ipc_port_t)object);
	}

	FUNC17(space);

	for (;;) {
		if (!FUNC16(space)) {
			FUNC18(space);
			return KERN_INVALID_TASK;
		}

		if ((msgt_name != MACH_MSG_TYPE_PORT_SEND_ONCE) &&
		    FUNC15(space, object, &name, &entry)) { 
			/* object is locked and active */

			FUNC4(entry->ie_bits & MACH_PORT_TYPE_SEND_RECEIVE);
			break;
		}

		name = FUNC0(object);
		kr = FUNC12(space, &name, &entry);
		if (kr != KERN_SUCCESS) {
			/* unlocks/locks space, so must start again */

			kr = FUNC13(space, ITS_SIZE_NONE);
			if (kr != KERN_SUCCESS)
				return kr; /* space is unlocked */

			continue;
		}

		FUNC4(FUNC1(entry->ie_bits) == MACH_PORT_TYPE_NONE);
		FUNC4(entry->ie_object == IO_NULL);

		FUNC8(object);
		if (!FUNC7(object)) {
			FUNC10(object);
			FUNC11(space, name, entry);
			FUNC18(space);
			return KERN_INVALID_CAPABILITY;
		}

		entry->ie_object = object;
		break;
	}

	/* space is write-locked and active, object is locked and active */

	kr = FUNC14(space, name, entry,
			       msgt_name, overflow, object);

	/* object is unlocked */
	FUNC18(space);

	if (kr == KERN_SUCCESS)
		*namep = name;
	return kr;
}