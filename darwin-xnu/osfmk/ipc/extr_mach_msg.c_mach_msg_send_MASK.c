#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  mach_msg_timeout_t ;
typedef  int mach_msg_size_t ;
typedef  int /*<<< orphan*/  mach_msg_return_t ;
typedef  int /*<<< orphan*/  mach_msg_priority_t ;
typedef  int /*<<< orphan*/  mach_msg_option_t ;
struct TYPE_17__ {int /*<<< orphan*/  msgh_trailer_size; int /*<<< orphan*/  msgh_trailer_type; int /*<<< orphan*/  msgh_audit; int /*<<< orphan*/  msgh_sender; } ;
typedef  TYPE_3__ mach_msg_max_trailer_t ;
struct TYPE_18__ {int msgh_bits; } ;
typedef  TYPE_4__ mach_msg_header_t ;
typedef  int /*<<< orphan*/  mach_msg_base_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_5__* ipc_kmsg_t ;
struct TYPE_19__ {TYPE_2__* ikm_header; } ;
struct TYPE_16__ {int msgh_size; } ;
struct TYPE_15__ {int /*<<< orphan*/  audit_token; int /*<<< orphan*/  sec_token; } ;
struct TYPE_14__ {TYPE_1__* task; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_NONE ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_IPC ; 
 TYPE_5__* IKM_NULL ; 
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_IPC_KMSG_INFO ; 
 int /*<<< orphan*/  MACH_IPC_KMSG_LINK ; 
 int MACH_MSGH_BITS_COMPLEX ; 
 int /*<<< orphan*/  MACH_MSG_BODY_NULL ; 
 int MACH_MSG_SIZE_MAX ; 
 int /*<<< orphan*/  MACH_MSG_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TRAILER_FORMAT_0 ; 
 int /*<<< orphan*/  MACH_MSG_TRAILER_MINIMUM_SIZE ; 
 int /*<<< orphan*/  MACH_SEND_KERNEL ; 
 int /*<<< orphan*/  MACH_SEND_MSG_TOO_SMALL ; 
 int /*<<< orphan*/  MACH_SEND_NO_BUFFER ; 
 int /*<<< orphan*/  MACH_SEND_TOO_LARGE ; 
 int MAX_TRAILER_SIZE ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_12__* FUNC6 () ; 
 TYPE_5__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,void const*,int) ; 

mach_msg_return_t
FUNC13(
	mach_msg_header_t	*msg,
	mach_msg_option_t	option,
	mach_msg_size_t		send_size,
	mach_msg_timeout_t	send_timeout,
	mach_msg_priority_t	override)
{
	ipc_space_t space = FUNC5();
	vm_map_t map = FUNC4();
	ipc_kmsg_t kmsg;
	mach_msg_return_t mr;
	mach_msg_size_t	msg_and_trailer_size;
	mach_msg_max_trailer_t	*trailer;

	option |= MACH_SEND_KERNEL;

	if ((send_size & 3) ||
	    send_size < sizeof(mach_msg_header_t) ||
	    (send_size < sizeof(mach_msg_base_t) && (msg->msgh_bits & MACH_MSGH_BITS_COMPLEX)))
		return MACH_SEND_MSG_TOO_SMALL;

	if (send_size > MACH_MSG_SIZE_MAX - MAX_TRAILER_SIZE)
		return MACH_SEND_TOO_LARGE;
	
	FUNC0(FUNC2(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_START);

	msg_and_trailer_size = send_size + MAX_TRAILER_SIZE;

	kmsg = FUNC7(msg_and_trailer_size);

	if (kmsg == IKM_NULL) {
		FUNC0(FUNC2(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, MACH_SEND_NO_BUFFER);
		return MACH_SEND_NO_BUFFER;
	}

	FUNC1(FUNC2(DBG_MACH_IPC,MACH_IPC_KMSG_LINK) | DBG_FUNC_NONE,
			      (uintptr_t)0, /* this should only be called from the kernel! */
			      FUNC3((uintptr_t)kmsg),
			      0, 0,
			      0);
	(void) FUNC12((void *) kmsg->ikm_header, (const void *) msg, send_size);

	kmsg->ikm_header->msgh_size = send_size;

	/* 
	 * reserve for the trailer the largest space (MAX_TRAILER_SIZE)
	 * However, the internal size field of the trailer (msgh_trailer_size)
	 * is initialized to the minimum (sizeof(mach_msg_trailer_t)), to optimize
	 * the cases where no implicit data is requested.
	 */
	trailer = (mach_msg_max_trailer_t *) ((vm_offset_t)kmsg->ikm_header + send_size);
	trailer->msgh_sender = FUNC6()->task->sec_token;
	trailer->msgh_audit = FUNC6()->task->audit_token;
	trailer->msgh_trailer_type = MACH_MSG_TRAILER_FORMAT_0;
	trailer->msgh_trailer_size = MACH_MSG_TRAILER_MINIMUM_SIZE;

	mr = FUNC8(kmsg, space, map, override, &option);

	if (mr != MACH_MSG_SUCCESS) {
		FUNC10(kmsg);
		FUNC0(FUNC2(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
		return mr;
	}

	mr = FUNC11(kmsg, option, send_timeout);

	if (mr != MACH_MSG_SUCCESS) {
	    mr |= FUNC9(kmsg, space, map, MACH_MSG_BODY_NULL);
	    (void) FUNC12((void *) msg, (const void *) kmsg->ikm_header, 
			  kmsg->ikm_header->msgh_size);
	    FUNC10(kmsg);
	    FUNC0(FUNC2(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
	}

	return mr;
}