#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ mach_msg_type_name_t ;
typedef  int mach_msg_return_t ;
typedef  int mach_msg_option_t ;
struct TYPE_22__ {int /*<<< orphan*/  msgh_voucher_port; void* msgh_remote_port; TYPE_2__* msgh_local_port; scalar_t__ msgh_bits; scalar_t__ msgh_id; } ;
typedef  TYPE_1__ mach_msg_header_t ;
typedef  scalar_t__ mach_msg_bits_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_port_timestamp_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  void* ipc_object_t ;
typedef  TYPE_3__* ipc_kmsg_t ;
typedef  TYPE_4__* ipc_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_25__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_24__ {TYPE_1__* ikm_header; TYPE_2__* ikm_voucher; } ;
struct TYPE_23__ {int /*<<< orphan*/  ip_timestamp; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_MACH_IPC ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ IKOT_VOUCHER ; 
 scalar_t__ IO_NULL ; 
 TYPE_2__* IP_DEAD ; 
 void* IP_NULL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ITS_SIZE_NONE ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,uintptr_t,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_IPC_MSG_RECV ; 
 int /*<<< orphan*/  MACH_IPC_MSG_RECV_VOUCHER_REFUSED ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ MACH_MSGH_BITS_ZERO ; 
 int MACH_MSG_IPC_SPACE ; 
 int MACH_MSG_SUCCESS ; 
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ; 
 scalar_t__ MACH_MSG_TYPE_PORT_SEND_ONCE ; 
 int /*<<< orphan*/  MACH_PORT_DEAD ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 scalar_t__ MACH_PORT_TYPE_NONE ; 
 int MACH_PORT_TYPE_SEND ; 
 int MACH_PORT_TYPE_SEND_RECEIVE ; 
 int MACH_RCV_HEADER_ERROR ; 
 int MACH_RCV_VOUCHER ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC11 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,scalar_t__,void*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (TYPE_2__*) ; 

mach_msg_return_t
FUNC34(
	ipc_kmsg_t              kmsg,
	ipc_space_t		space,
	mach_msg_option_t	option)
{
	mach_msg_header_t *msg = kmsg->ikm_header;
	mach_msg_bits_t mbits = msg->msgh_bits;
	ipc_port_t dest = (ipc_port_t) msg->msgh_remote_port;

	FUNC12(FUNC4(dest));

	/*
	 * While we still hold a reference on the received-from port,
	 * process all send-possible notfications we received along with
	 * the message.
	 */
	FUNC25(dest);

    {
	mach_msg_type_name_t dest_type = FUNC8(mbits);
	mach_msg_type_name_t reply_type = FUNC7(mbits);
	mach_msg_type_name_t voucher_type = FUNC10(mbits);
	ipc_port_t reply = msg->msgh_local_port;
	ipc_port_t release_reply_port = IP_NULL;
	mach_port_name_t dest_name, reply_name;

	ipc_port_t voucher = kmsg->ikm_voucher;
	ipc_port_t release_voucher_port = IP_NULL;
	mach_port_name_t voucher_name;

	uint32_t entries_held = 0;
	boolean_t need_write_lock = FALSE;
	kern_return_t kr;

	/*
	 * Reserve any potentially needed entries in the target space.
	 * We'll free any unused before unlocking the space.
	 */
	if (FUNC4(reply)) {
		entries_held++;
		need_write_lock = TRUE;
	}
	if (FUNC4(voucher)) {
		FUNC12(voucher_type == MACH_MSG_TYPE_MOVE_SEND); 

		if ((option & MACH_RCV_VOUCHER) != 0)
 			entries_held++;
		need_write_lock = TRUE;
	}

	if (need_write_lock) {

		FUNC31(space);

		while(entries_held) {
			if (!FUNC28(space)) {
				FUNC32(space);
				return (MACH_RCV_HEADER_ERROR|
					MACH_MSG_IPC_SPACE);
			}
				
			kr = FUNC19(space, entries_held);
			if (KERN_SUCCESS == kr)
				break;

			kr = FUNC21(space, ITS_SIZE_NONE);
			if (KERN_SUCCESS != kr)
				return(MACH_RCV_HEADER_ERROR|
				       MACH_MSG_IPC_SPACE);
			/* space was unlocked and relocked - retry */
		}

		/* Handle reply port. */
		if (FUNC4(reply)) {
			ipc_entry_t entry;

			/* Is there already an entry we can use? */
			if ((reply_type != MACH_MSG_TYPE_PORT_SEND_ONCE) &&
			    FUNC27(space, (ipc_object_t) reply, &reply_name, &entry)) {
				/* reply port is locked and active */
				FUNC12(entry->ie_bits & MACH_PORT_TYPE_SEND_RECEIVE);
			} else {
				FUNC15(reply);
				if (!FUNC13(reply)) {
					FUNC18(reply);
					
					release_reply_port = reply;
					reply = IP_DEAD;
					reply_name = MACH_PORT_DEAD;
					goto done_with_reply;
				}
				
				/* claim a held entry for the reply port */
				FUNC12(entries_held > 0);
				entries_held--;
				FUNC20(space, &reply_name, &entry);
				FUNC12(FUNC2(entry->ie_bits) == MACH_PORT_TYPE_NONE);
				FUNC12(entry->ie_object == IO_NULL); 
				entry->ie_object = (ipc_object_t) reply;
			}

			/* space and reply port are locked and active */
			FUNC16(reply);	/* hold onto the reply port */

			kr = FUNC26(space, reply_name, entry,
					       reply_type, TRUE, (ipc_object_t) reply);
			FUNC12(kr == KERN_SUCCESS);
			/* reply port is unlocked */
		} else
			reply_name = FUNC1(reply);

	done_with_reply:

		/* Handle voucher port. */
		if (voucher_type != MACH_MSGH_BITS_ZERO) {
			FUNC12(voucher_type == MACH_MSG_TYPE_MOVE_SEND);

			if (!FUNC4(voucher)) {
				if ((option & MACH_RCV_VOUCHER) == 0) {
					voucher_type = MACH_MSGH_BITS_ZERO;
				}
				voucher_name = MACH_PORT_NULL;
				goto done_with_voucher;
			}
			
			/* clear voucher from its hiding place back in the kmsg */
			kmsg->ikm_voucher = IP_NULL;

			if ((option & MACH_RCV_VOUCHER) != 0) {
				ipc_entry_t entry;

				if (FUNC27(space, (ipc_object_t) voucher,
						      &voucher_name, &entry)) {
					/* voucher port locked */
					FUNC12(entry->ie_bits & MACH_PORT_TYPE_SEND);
				} else {
					FUNC12(entries_held > 0);
					entries_held--;
					FUNC20(space, &voucher_name, &entry);
					FUNC12(FUNC2(entry->ie_bits) == MACH_PORT_TYPE_NONE);
					FUNC12(entry->ie_object == IO_NULL); 
					entry->ie_object = (ipc_object_t) voucher;
					FUNC15(voucher);
				}
				/* space is locked and active */

				FUNC12(FUNC13(voucher));
				FUNC12(FUNC14(voucher) == IKOT_VOUCHER);
				kr = FUNC26(space, voucher_name, entry,
						       MACH_MSG_TYPE_MOVE_SEND, TRUE, 
						       (ipc_object_t) voucher);
				/* voucher port is unlocked */
			} else {
				voucher_type = MACH_MSGH_BITS_ZERO;
				release_voucher_port = voucher;
				voucher_name = MACH_PORT_NULL;
			}
		} else {
			voucher_name = msg->msgh_voucher_port;
		}

	done_with_voucher:

		FUNC15(dest);
		FUNC32(space);

	} else {
		/*
		 *	No reply or voucher port!  This is an easy case.
		 *	We only need to have the space locked
		 *	when locking the destination.
		 */

		FUNC29(space);
		if (!FUNC28(space)) {
			FUNC30(space);
			return MACH_RCV_HEADER_ERROR|MACH_MSG_IPC_SPACE;
		}

		FUNC15(dest);
		FUNC30(space);

		reply_name = FUNC1(reply);

		if (voucher_type != MACH_MSGH_BITS_ZERO) {
			FUNC12(voucher_type == MACH_MSG_TYPE_MOVE_SEND);
			if ((option & MACH_RCV_VOUCHER) == 0) {
				voucher_type = MACH_MSGH_BITS_ZERO;
			}
			voucher_name = MACH_PORT_NULL;
		} else {
			voucher_name = msg->msgh_voucher_port;
		}
	}

	/*
	 *	At this point, the space is unlocked and the destination
	 *	port is locked.  (Lock taken while space was locked.)
	 *	reply_name is taken care of; we still need dest_name.
	 *	We still hold a ref for reply (if it is valid).
	 *
	 *	If the space holds receive rights for the destination,
	 *	we return its name for the right.  Otherwise the task
	 *	managed to destroy or give away the receive right between
	 *	receiving the message and this copyout.  If the destination
	 *	is dead, return MACH_PORT_DEAD, and if the receive right
	 *	exists somewhere else (another space, in transit)
	 *	return MACH_PORT_NULL.
	 *
	 *	Making this copyout operation atomic with the previous
	 *	copyout of the reply port is a bit tricky.  If there was
	 *	no real reply port (it wasn't IP_VALID) then this isn't
	 *	an issue.  If the reply port was dead at copyout time,
	 *	then we are OK, because if dest is dead we serialize
	 *	after the death of both ports and if dest is alive
	 *	we serialize after reply died but before dest's (later) death.
	 *	So assume reply was alive when we copied it out.  If dest
	 *	is alive, then we are OK because we serialize before
	 *	the ports' deaths.  So assume dest is dead when we look at it.
	 *	If reply dies/died after dest, then we are OK because
	 *	we serialize after dest died but before reply dies.
	 *	So the hard case is when reply is alive at copyout,
	 *	dest is dead at copyout, and reply died before dest died.
	 *	In this case pretend that dest is still alive, so
	 *	we serialize while both ports are alive.
	 *
	 *	Because the space lock is held across the copyout of reply
	 *	and locking dest, the receive right for dest can't move
	 *	in or out of the space while the copyouts happen, so
	 *	that isn't an atomicity problem.  In the last hard case
	 *	above, this implies that when dest is dead that the
	 *	space couldn't have had receive rights for dest at
	 *	the time reply was copied-out, so when we pretend
	 *	that dest is still alive, we can return MACH_PORT_NULL.
	 *
	 *	If dest == reply, then we have to make it look like
	 *	either both copyouts happened before the port died,
	 *	or both happened after the port died.  This special
	 *	case works naturally if the timestamp comparison
	 *	is done correctly.
	 */

	if (FUNC13(dest)) {
		FUNC22(space, (ipc_object_t) dest,
					dest_type, &dest_name);
		/* dest is unlocked */

	} else {
		ipc_port_timestamp_t timestamp;

		timestamp = dest->ip_timestamp;
		FUNC18(dest);
		FUNC17(dest);

		if (FUNC4(reply)) {
			FUNC15(reply);
			if (FUNC13(reply) ||
			    FUNC3(timestamp,
					       reply->ip_timestamp))
				dest_name = MACH_PORT_DEAD;
			else
				dest_name = MACH_PORT_NULL;
			FUNC18(reply);
		} else
			dest_name = MACH_PORT_DEAD;
	}

	if (FUNC4(reply))
		FUNC17(reply);

	if (FUNC4(release_reply_port)) {
		if (reply_type == MACH_MSG_TYPE_PORT_SEND_ONCE)
			FUNC24(release_reply_port);
		else
			FUNC23(release_reply_port);
	}

	if (FUNC4(release_voucher_port))
		FUNC23(release_voucher_port);


	if ((option & MACH_RCV_VOUCHER) != 0) {
	    FUNC5(FUNC6(DBG_MACH_IPC, MACH_IPC_MSG_RECV) | DBG_FUNC_NONE,
				  FUNC11((uintptr_t)kmsg),
				  (uintptr_t)kmsg->ikm_header->msgh_bits,
				  (uintptr_t)kmsg->ikm_header->msgh_id,
				  FUNC11((uintptr_t)FUNC33(voucher)),
				  0);
	} else {
	    FUNC5(FUNC6(DBG_MACH_IPC, MACH_IPC_MSG_RECV_VOUCHER_REFUSED) | DBG_FUNC_NONE,
				  FUNC11((uintptr_t)kmsg),
				  (uintptr_t)kmsg->ikm_header->msgh_bits,
				  (uintptr_t)kmsg->ikm_header->msgh_id,
				  FUNC11((uintptr_t)FUNC33(voucher)),
				  0);
	}

	msg->msgh_bits = FUNC9(reply_type, dest_type,
					    voucher_type, mbits);
	msg->msgh_local_port = FUNC0(dest_name);
	msg->msgh_remote_port = FUNC0(reply_name);
	msg->msgh_voucher_port = voucher_name;
    }

    return MACH_MSG_SUCCESS;
}