#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_address_t ;
typedef  int uint64_t ;
struct port_args {int server_num; int* set; int /*<<< orphan*/  reply_size; TYPE_3__* reply_msg; TYPE_3__* req_msg; int /*<<< orphan*/  req_size; int /*<<< orphan*/  port; int /*<<< orphan*/  rcv_set; } ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  size; scalar_t__ address; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;
typedef  TYPE_2__ ipc_complex_message ;
struct TYPE_6__ {int msgh_bits; int msgh_id; int /*<<< orphan*/  msgh_local_port; int /*<<< orphan*/  msgh_remote_port; int /*<<< orphan*/  msgh_size; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MACH_MSGH_BITS_COMPLEX ; 
 int MACH_MSG_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TIMEOUT_NONE ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_MOVE_SEND_ONCE ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_PORT_SET ; 
 int MACH_RCV_INTERRUPT ; 
 int MACH_RCV_INTERRUPTED ; 
 int MACH_RCV_LARGE ; 
 int MACH_RCV_MSG ; 
 int MACH_SEND_MSG ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int num_clients ; 
 int num_msgs ; 
 scalar_t__ portcount ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 struct port_args* server_port_args ; 
 int setcount ; 
 int /*<<< orphan*/  FUNC9 (struct port_args*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ useset ; 
 int verbose ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC12(void *serverarg)
{
	int idx;
	kern_return_t ret;
	int totalmsg = num_msgs * num_clients;
	mach_port_t recv_port;
	uint64_t starttm, endtm;

	int svr_num = (int)(uintptr_t)serverarg;
	struct port_args *args = &server_port_args[svr_num];

	args->server_num = svr_num;
	FUNC9(args);

	FUNC10(args->server_num + 1);

	recv_port = (useset) ? args->rcv_set : args->port;

	for (idx = 0; idx < totalmsg; idx++) {
		if (verbose > 2)
			FUNC8("server awaiting message %d\n", idx);
		ret = FUNC5(args->req_msg,
				MACH_RCV_MSG|MACH_RCV_INTERRUPT|MACH_RCV_LARGE, 
				0, 
				args->req_size,
				recv_port, 
				MACH_MSG_TIMEOUT_NONE, 
				MACH_PORT_NULL);
		if (MACH_RCV_INTERRUPTED == ret)
			break;
		if (MACH_MSG_SUCCESS != ret) {
			if (verbose)
				FUNC8("mach_msg() ret=%d", ret);
			FUNC4("mach_msg (receive): ", ret);
			FUNC2(1);
		}
		if (verbose > 2)
			FUNC8("server received message %d\n", idx);
		if (args->req_msg->msgh_bits & MACH_MSGH_BITS_COMPLEX) {
			ret = FUNC11(FUNC7(),  
					(vm_address_t)((ipc_complex_message *)args->req_msg)->descriptor.address,
					((ipc_complex_message *)args->req_msg)->descriptor.size);
		}

		if (1 == args->req_msg->msgh_id) {
			if (verbose > 2)
				FUNC8("server sending reply %d\n", idx);
			args->reply_msg->msgh_bits = FUNC0(MACH_MSG_TYPE_MOVE_SEND_ONCE, 0);
			args->reply_msg->msgh_size = args->reply_size;
			args->reply_msg->msgh_remote_port = args->req_msg->msgh_remote_port;
			args->reply_msg->msgh_local_port = MACH_PORT_NULL;
			args->reply_msg->msgh_id = 2;
			ret = FUNC5(args->reply_msg,
					MACH_SEND_MSG, 
					args->reply_size,
					0, 
					MACH_PORT_NULL, 
					MACH_MSG_TIMEOUT_NONE,  
					MACH_PORT_NULL);
			if (MACH_MSG_SUCCESS != ret) {
				FUNC4("mach_msg (send): ", ret);
				FUNC2(1);
			}
		}
	}

	if (!useset)
		return NULL;

	if (verbose < 1)
		return NULL;

	uint64_t deltans = 0;
	/*
	 * If we're using multiple sets, explicitly tear them all down
	 * and measure the time.
	 */
	for (int ns = 0; ns < setcount; ns++) {
		if (verbose > 1)
			FUNC8("\tTearing down set[%d] %#x...\n", ns, args->set[ns]);
		starttm = FUNC3();
		ret = FUNC6(FUNC7(), args->set[ns], MACH_PORT_RIGHT_PORT_SET, -1);
		endtm = FUNC3();
		deltans += FUNC1(endtm - starttm);
		if (ret != KERN_SUCCESS) {
			FUNC4("mach_port_mod_refs(): ", ret);
			FUNC2(1);
		}
	}

	uint64_t nlinks = (uint64_t)setcount * (uint64_t)portcount;

	FUNC8("\tteardown of %llu links took %llu ns\n", nlinks, deltans);
	FUNC8("\t%lluns per set\n", deltans / (uint64_t)setcount);

	return NULL;
}