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
struct port_args {int req_size; int reply_size; size_t server_num; int /*<<< orphan*/  port; int /*<<< orphan*/  pset; void* reply_msg; void* req_msg; } ;
typedef  int /*<<< orphan*/  mach_port_t ;
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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (int) ; 
 int num_ints ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char** server_port_name ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ verbose ; 

void FUNC11(struct port_args *ports)
{
	kern_return_t ret = 0;
	mach_port_t bsport;

	ports->req_size = FUNC0(sizeof(ipc_inline_message) +  
			sizeof(u_int32_t) * num_ints, 
			sizeof(ipc_complex_message));
	ports->reply_size = sizeof(ipc_trivial_message) - 
		sizeof(mach_msg_trailer_t);
	ports->req_msg = FUNC8(ports->req_size);
	ports->reply_msg = FUNC8(ports->reply_size);

	ret = FUNC4(FUNC7(), 
			MACH_PORT_RIGHT_RECEIVE,  
			&(ports->port));
	if (KERN_SUCCESS != ret) {
		FUNC3("mach_port_allocate(): ", ret);
		FUNC2(1);
	}

	ret = FUNC4(FUNC7(), 
			MACH_PORT_RIGHT_PORT_SET,  
			&(ports->pset));
	if (KERN_SUCCESS != ret) {
		FUNC3("mach_port_allocate(): ", ret);
		FUNC2(1);
	}
	
	ret = FUNC5(FUNC7(),
			ports->port,
			ports->pset);
	if (KERN_SUCCESS != ret) {
		FUNC3("mach_port_insert_member(): ", ret);
		FUNC2(1);
	}

	ret = FUNC6(FUNC7(), 
			ports->port, 
			ports->port, 
			MACH_MSG_TYPE_MAKE_SEND);
	if (KERN_SUCCESS != ret) {
		FUNC3("mach_port_insert_right(): ", ret);
		FUNC2(1);
	}

	ret = FUNC10(FUNC7(), &bsport);
	if (KERN_SUCCESS != ret) {
		FUNC3("task_get_bootstrap_port(): ", ret);
		FUNC2(1);
	}

	if (verbose) {
		FUNC9("server waiting for IPC messages from client on port '%s'.\n",
			server_port_name[ports->server_num]);
	}
	ret = FUNC1(bsport,
				 server_port_name[ports->server_num],
				 ports->port);
	if (KERN_SUCCESS != ret) {
		FUNC3("bootstrap_register(): ", ret);
		FUNC2(1);
	}
}