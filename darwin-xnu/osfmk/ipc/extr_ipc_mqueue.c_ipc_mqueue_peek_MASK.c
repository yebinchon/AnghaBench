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
typedef  int /*<<< orphan*/  mach_port_seqno_t ;
typedef  int /*<<< orphan*/  mach_msg_size_t ;
typedef  int /*<<< orphan*/  mach_msg_max_trailer_t ;
typedef  int /*<<< orphan*/  mach_msg_id_t ;
typedef  int /*<<< orphan*/  ipc_mqueue_t ;
typedef  int /*<<< orphan*/  ipc_kmsg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

unsigned
FUNC3(ipc_mqueue_t mq,
		mach_port_seqno_t * seqnop,
		mach_msg_size_t * msg_sizep,
		mach_msg_id_t * msg_idp,
		mach_msg_max_trailer_t * msg_trailerp,
		ipc_kmsg_t *kmsgp)
{
	unsigned res;

	FUNC0(mq);

	res = FUNC2(mq, seqnop, msg_sizep, msg_idp,
				     msg_trailerp, kmsgp);

	FUNC1(mq);
	return res;
}