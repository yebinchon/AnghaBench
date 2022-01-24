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
typedef  int /*<<< orphan*/  mach_msg_descriptor_t ;
struct TYPE_8__ {int /*<<< orphan*/  msgh_descriptor_count; } ;
typedef  TYPE_2__ mach_msg_body_t ;
typedef  int mach_msg_bits_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_3__* ipc_kmsg_t ;
struct TYPE_9__ {TYPE_1__* ikm_header; scalar_t__ ikm_voucher; } ;
struct TYPE_7__ {int msgh_bits; scalar_t__ msgh_local_port; scalar_t__ msgh_remote_port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IP_NULL ; 
 int MACH_MSGH_BITS_COMPLEX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_PORT_SEND ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC9(
	ipc_kmsg_t	kmsg)
{
	ipc_object_t object;
	mach_msg_bits_t mbits;

	/* deal with importance chain while we still have dest and voucher references */
	FUNC5(kmsg);

	mbits = kmsg->ikm_header->msgh_bits;
	object = (ipc_object_t) kmsg->ikm_header->msgh_remote_port;
	if (FUNC0(object))
		FUNC8(object, FUNC2(mbits));

	object = (ipc_object_t) kmsg->ikm_header->msgh_local_port;
	if (FUNC0(object))
		FUNC7(object, FUNC1(mbits));

	object = (ipc_object_t) kmsg->ikm_voucher;
	if (FUNC0(object)) {
		FUNC4(FUNC3(mbits) == MACH_MSG_TYPE_MOVE_SEND);
		FUNC7(object, MACH_MSG_TYPE_PORT_SEND);
		kmsg->ikm_voucher = IP_NULL;
	}

	if (mbits & MACH_MSGH_BITS_COMPLEX) {
		mach_msg_body_t *body;

		body = (mach_msg_body_t *) (kmsg->ikm_header + 1);
		FUNC6(kmsg, body->msgh_descriptor_count,
				    (mach_msg_descriptor_t *)(body + 1));
	}
}