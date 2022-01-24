#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct port_args {int req_size; int reply_size; int* set; int* port_list; int server_num; int rcv_set; int port; void* reply_msg; void* req_msg; } ;
typedef  int mach_port_t ;
typedef  int /*<<< orphan*/  mach_msg_trailer_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_trivial_message ;
typedef  int /*<<< orphan*/  ipc_inline_message ;
typedef  int /*<<< orphan*/  ipc_complex_message ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_MAKE_SEND ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_PORT_SET ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_RECEIVE ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 (int) ; 
 int num_ints ; 
 int portcount ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 char** server_port_name ; 
 int setcount ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stress_prepost ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ useset ; 
 int verbose ; 

void FUNC13(struct port_args *ports)
{
	kern_return_t ret = 0;
	mach_port_t bsport;
	mach_port_t port;

	ports->req_size = FUNC0(sizeof(ipc_inline_message) +  
			sizeof(u_int32_t) * num_ints, 
			sizeof(ipc_complex_message));
	ports->reply_size = sizeof(ipc_trivial_message) - 
		sizeof(mach_msg_trailer_t);
	ports->req_msg = FUNC10(ports->req_size);
	ports->reply_msg = FUNC10(ports->reply_size);
	if (setcount > 0) {
		ports->set = (mach_port_t *)FUNC2(sizeof(mach_port_t), setcount);
		if (!ports->set) {
			FUNC4(stderr, "calloc(%d, %d) failed!\n", sizeof(mach_port_t), setcount);
			FUNC3(1);
		}
	}
	if (stress_prepost) {
		ports->port_list = (mach_port_t *)FUNC2(sizeof(mach_port_t), portcount);
		if (!ports->port_list) {
			FUNC4(stderr, "calloc(%d, %d) failed!\n", sizeof(mach_port_t), portcount);
			FUNC3(1);
		}
	}

	if (useset) {
		mach_port_t set;
		if (setcount < 1) {
			FUNC4(stderr, "Can't use sets with a setcount of %d\n", setcount);
			FUNC3(1);
		}

		for (int ns = 0; ns < setcount; ns++) {
			ret = FUNC6(FUNC9(),
						 MACH_PORT_RIGHT_PORT_SET,
						 &ports->set[ns]);
			if (KERN_SUCCESS != ret) {
				FUNC5("mach_port_allocate(SET): ", ret);
				FUNC3(1);
			}
			if (verbose > 1)
				FUNC11("SVR[%d] allocated set[%d] %#x\n",
				       ports->server_num, ns, ports->set[ns]);

			set = ports->set[ns];
		}

		/* receive on a port set (always use the first in the chain) */
		ports->rcv_set = ports->set[0];
	}

	/* stuff the portset(s) with ports */
	for (int i = 0; i < portcount; i++) {
		ret = FUNC6(FUNC9(), 
					 MACH_PORT_RIGHT_RECEIVE,  
					 &port);
		if (KERN_SUCCESS != ret) {
			FUNC5("mach_port_allocate(PORT): ", ret);
			FUNC3(1);
		}

		if (stress_prepost)
			ports->port_list[i] = port;

		if (useset) {
			/* insert the port into _all_ allocated lowest-level sets */
			for (int ns = 0; ns < setcount; ns++) {
				if (verbose > 1)
					FUNC11("SVR[%d] moving port %#x into set %#x...\n",
					       ports->server_num, port, ports->set[ns]);
				ret = FUNC7(FUNC9(),
							      port, ports->set[ns]);
				if (KERN_SUCCESS != ret) {
					FUNC5("mach_port_insert_member(): ", ret);
					FUNC3(1);
				}
			}
		}
	}

	/* use the last one as the server's bootstrap port */
	ports->port = port;

	if (stress_prepost) {
		/* insert a send right for _each_ port */
		for (int i = 0; i < portcount; i++) {
			ret = FUNC8(FUNC9(),
						     ports->port_list[i],
						     ports->port_list[i],
						     MACH_MSG_TYPE_MAKE_SEND);
			if (KERN_SUCCESS != ret) {
				FUNC5("mach_port_insert_right(): ", ret);
				FUNC3(1);
			}
		}
	} else {
		ret = FUNC8(FUNC9(),
					     ports->port,
					     ports->port,
					     MACH_MSG_TYPE_MAKE_SEND);
		if (KERN_SUCCESS != ret) {
			FUNC5("mach_port_insert_right(): ", ret);
			FUNC3(1);
		}
	}

	ret = FUNC12(FUNC9(), &bsport);
	if (KERN_SUCCESS != ret) {
		FUNC5("task_get_bootstrap_port(): ", ret);
		FUNC3(1);
	}

	if (verbose) {
		FUNC11("server waiting for IPC messages from client on port '%s' (%#x).\n",
			server_port_name[ports->server_num], ports->port);
	}
	ret = FUNC1(bsport,
				 server_port_name[ports->server_num],
				 ports->port);
	if (KERN_SUCCESS != ret) {
		FUNC5("bootstrap_register(): ", ret);
		FUNC3(1);
	}
}