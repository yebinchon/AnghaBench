#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_2__* ipc_kmsg_t ;
struct TYPE_5__ {TYPE_1__* ikm_header; } ;
struct TYPE_4__ {int msgh_bits; void* msgh_remote_port; void* msgh_local_port; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  MACH_PORT_DEAD ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC13(
	ipc_kmsg_t	kmsg,
	ipc_space_t	space)
{
	ipc_object_t dest;
	ipc_object_t reply;
	mach_msg_type_name_t dest_type;
	mach_msg_type_name_t reply_type;
	mach_port_name_t dest_name, reply_name;

	dest = (ipc_object_t) kmsg->ikm_header->msgh_remote_port;
	reply = (ipc_object_t) kmsg->ikm_header->msgh_local_port;
	dest_type = FUNC6(kmsg->ikm_header->msgh_bits);
	reply_type = FUNC4(kmsg->ikm_header->msgh_bits);

	FUNC7(FUNC2(dest));

	FUNC9(dest);
	if (FUNC8(dest)) {
		FUNC12(space, dest, dest_type, &dest_name);
		/* dest is unlocked */
	} else {
		FUNC11(dest);
		FUNC10(dest);
		dest_name = MACH_PORT_DEAD;
	}

	reply_name = FUNC1(reply);

	kmsg->ikm_header->msgh_bits =
		(FUNC5(kmsg->ikm_header->msgh_bits) |
					FUNC3(reply_type, dest_type));
	kmsg->ikm_header->msgh_local_port =  FUNC0(dest_name);
	kmsg->ikm_header->msgh_remote_port = FUNC0(reply_name);
}