#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  TYPE_3__* thread_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int /*<<< orphan*/  mach_port_seqno_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_trailer_size_t ;
typedef  scalar_t__ mach_msg_size_t ;
typedef  int mach_msg_return_t ;
typedef  int mach_msg_option_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  TYPE_4__* ipc_kmsg_t ;
struct TYPE_18__ {int /*<<< orphan*/  ikm_qos_override; int /*<<< orphan*/  ikm_qos; TYPE_2__* ikm_header; } ;
struct TYPE_17__ {int ith_state; scalar_t__ ith_msg_addr; scalar_t__ ith_rsize; int ith_option; int /*<<< orphan*/  ith_qos_override; int /*<<< orphan*/  ith_qos; int /*<<< orphan*/  ith_msize; int /*<<< orphan*/  ith_receiver_name; int /*<<< orphan*/  ith_seqno; TYPE_4__* ith_kmsg; int /*<<< orphan*/  ith_object; } ;
struct TYPE_16__ {TYPE_1__* msgh_remote_port; } ;
struct TYPE_15__ {int /*<<< orphan*/  ip_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MACH_MSG_BODY_NULL ; 
 int MACH_MSG_MASK ; 
 int MACH_MSG_SUCCESS ; 
 int MACH_RCV_BODY_ERROR ; 
 int MACH_RCV_INVALID_DATA ; 
 int MACH_RCV_LARGE ; 
 int MACH_RCV_LARGE_IDENTITY ; 
 int MACH_RCV_STACK ; 
 int MACH_RCV_TOO_LARGE ; 
 scalar_t__ FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_4__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mach_msg_user_header_t ; 
 int FUNC13 (TYPE_4__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  msgh_local_port ; 
 int /*<<< orphan*/  msgh_reserved ; 
 int /*<<< orphan*/  msgh_size ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mach_msg_return_t
FUNC15(
	mach_msg_size_t *sizep)
{
	thread_t          self = FUNC3();
	ipc_space_t       space = FUNC2();
	vm_map_t          map = FUNC1();

	ipc_object_t      object = self->ith_object;
	mach_msg_return_t mr = self->ith_state;
	mach_vm_address_t rcv_addr = self->ith_msg_addr;
	mach_msg_size_t   rcv_size = self->ith_rsize;
	mach_msg_option_t option = self->ith_option;
	ipc_kmsg_t        kmsg = self->ith_kmsg;
	mach_port_seqno_t seqno = self->ith_seqno;

	mach_msg_trailer_size_t trailer_size;
	mach_msg_size_t   size = 0;

	/*
	 * unlink the special_reply_port before releasing reference to object.
	 * get the thread's turnstile, if the thread donated it's turnstile to the port
	 */
	FUNC12(object);
	FUNC4(object);

	if (mr != MACH_MSG_SUCCESS) {

		if (mr == MACH_RCV_TOO_LARGE) {

			/*
			 * If the receive operation occurs with MACH_RCV_LARGE set
			 * then no message was extracted from the queue, and the size
			 * and (optionally) receiver names were the only thing captured.
			 * Just copyout the size (and optional port name) in a fake
			 * header.
			 */
			if (option & MACH_RCV_LARGE) {

				if ((option & MACH_RCV_STACK) == 0 &&
				    rcv_size >= FUNC14(mach_msg_user_header_t, msgh_reserved)) {

					/*
					 * We need to inform the user-level code that it needs more
					 * space.  The value for how much space was returned in the
					 * msize save area instead of the message (which was left on
					 * the queue).
					 */
					if (option & MACH_RCV_LARGE_IDENTITY) {
						if (FUNC0((char *) &self->ith_receiver_name,
							    rcv_addr + FUNC14(mach_msg_user_header_t, msgh_local_port),
							    sizeof(mach_port_name_t)))
							mr = MACH_RCV_INVALID_DATA;
					}
					if (FUNC0((char *) &self->ith_msize,
						    rcv_addr + FUNC14(mach_msg_user_header_t, msgh_size),
						    sizeof(mach_msg_size_t)))
						mr = MACH_RCV_INVALID_DATA;
				}
			} else {

				/* discard importance in message */
				FUNC5(kmsg);

				if (FUNC13(kmsg, option, rcv_addr, rcv_size, seqno, space, &size)
				    == MACH_RCV_INVALID_DATA)
					mr = MACH_RCV_INVALID_DATA;
			}
		}

		if (sizep)
			*sizep = size;
		return mr;
	}

	/* MACH_MSG_SUCCESS */

#if IMPORTANCE_INHERITANCE

	/* adopt/transform any importance attributes carried in the message */
	ipc_importance_receive(kmsg, option);

#endif  /* IMPORTANCE_INHERITANCE */

	/* auto redeem the voucher in the message */
	FUNC11(kmsg, option);

	trailer_size = FUNC8(kmsg, space, option, self, seqno, FALSE, 
			kmsg->ikm_header->msgh_remote_port->ip_context);
	
	mr = FUNC9(kmsg, space, map, MACH_MSG_BODY_NULL, option);

	if (mr != MACH_MSG_SUCCESS) {

		/* already received importance, so have to undo that here */
		FUNC7(kmsg, option);

		/* if we had a body error copyout what we have, otherwise a simple header/trailer */
		if ((mr &~ MACH_MSG_MASK) == MACH_RCV_BODY_ERROR) {
			if (FUNC10(kmsg, option, rcv_addr, rcv_size, trailer_size, &size) == MACH_RCV_INVALID_DATA)
				mr = MACH_RCV_INVALID_DATA;
		} else {
			if (FUNC13(kmsg, option, rcv_addr, rcv_size, seqno, space, &size) 
						== MACH_RCV_INVALID_DATA)
				mr = MACH_RCV_INVALID_DATA;
		}
	} else {
		/* capture ksmg QoS values to the thread continuation state */
		self->ith_qos = kmsg->ikm_qos;
		self->ith_qos_override = kmsg->ikm_qos_override;
		mr = FUNC10(kmsg, option, rcv_addr, rcv_size, trailer_size, &size);
	}

	if (sizep)
		*sizep = size;
	return mr;
}