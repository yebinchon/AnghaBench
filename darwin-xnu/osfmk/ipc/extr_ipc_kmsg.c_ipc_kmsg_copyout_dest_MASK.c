#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ mach_msg_type_name_t ;
typedef  int /*<<< orphan*/  mach_msg_descriptor_t ;
struct TYPE_8__ {int /*<<< orphan*/  msgh_descriptor_count; } ;
typedef  TYPE_2__ mach_msg_body_t ;
typedef  int mach_msg_bits_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_3__* ipc_kmsg_t ;
struct TYPE_9__ {TYPE_1__* ikm_header; scalar_t__ ikm_voucher; } ;
struct TYPE_7__ {int msgh_bits; int /*<<< orphan*/  msgh_voucher_port; void* msgh_remote_port; void* msgh_local_port; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ IP_NULL ; 
 int MACH_MSGH_BITS_COMPLEX ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ; 
 int /*<<< orphan*/  MACH_PORT_DEAD ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 

void
FUNC16(
	ipc_kmsg_t	kmsg,
	ipc_space_t	space)
{
	mach_msg_bits_t mbits;
	ipc_object_t dest;
	ipc_object_t reply;
	ipc_object_t voucher;
	mach_msg_type_name_t dest_type;
	mach_msg_type_name_t reply_type;
	mach_msg_type_name_t voucher_type;
	mach_port_name_t dest_name, reply_name, voucher_name;

	mbits = kmsg->ikm_header->msgh_bits;
	dest = (ipc_object_t) kmsg->ikm_header->msgh_remote_port;
	reply = (ipc_object_t) kmsg->ikm_header->msgh_local_port;
	voucher = (ipc_object_t) kmsg->ikm_voucher;
	voucher_name = kmsg->ikm_header->msgh_voucher_port;
	dest_type = FUNC4(mbits);
	reply_type = FUNC3(mbits);
	voucher_type = FUNC6(mbits);

	FUNC7(FUNC2(dest));

	FUNC12(kmsg);

	FUNC9(dest);
	if (FUNC8(dest)) {
		FUNC14(space, dest, dest_type, &dest_name);
		/* dest is unlocked */
	} else {
		FUNC11(dest);
		FUNC10(dest);
		dest_name = MACH_PORT_DEAD;
	}

	if (FUNC2(reply)) {
		FUNC15(reply, reply_type);
		reply_name = MACH_PORT_NULL;
	} else
		reply_name = FUNC1(reply);

	if (FUNC2(voucher)) {
		FUNC7(voucher_type == MACH_MSG_TYPE_MOVE_SEND);

		kmsg->ikm_voucher = IP_NULL;
		FUNC15((ipc_object_t)voucher, voucher_type);
		voucher_name = MACH_PORT_NULL;
	}

	kmsg->ikm_header->msgh_bits = FUNC5(reply_type, dest_type,
							 voucher_type, mbits);
	kmsg->ikm_header->msgh_local_port = FUNC0(dest_name);
	kmsg->ikm_header->msgh_remote_port = FUNC0(reply_name);
	kmsg->ikm_header->msgh_voucher_port = voucher_name;

	if (mbits & MACH_MSGH_BITS_COMPLEX) {
		mach_msg_body_t *body;

		body = (mach_msg_body_t *) (kmsg->ikm_header + 1);
		FUNC13(kmsg, body->msgh_descriptor_count, 
				    (mach_msg_descriptor_t *)(body + 1));
	}
}