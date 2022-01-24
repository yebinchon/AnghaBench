#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct flow_divert_pcb {TYPE_2__* so; } ;
typedef  int /*<<< orphan*/  rbuff_space ;
typedef  int /*<<< orphan*/ * mbuf_t ;
struct TYPE_3__ {int sb_hiwat; } ;
struct TYPE_4__ {TYPE_1__ so_rcv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int /*<<< orphan*/  FLOW_DIVERT_PKT_CONNECT_RESULT ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_SPACE_AVAILABLE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (struct flow_divert_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct flow_divert_pcb *fd_cb)
{
	int		error	 		= 0;
	mbuf_t	packet			= NULL;
	int		rbuff_space		= 0;

	error = FUNC2(fd_cb, FLOW_DIVERT_PKT_CONNECT_RESULT, &packet);
	if (error) {
		FUNC0(LOG_ERR, fd_cb, "failed to create a connect result packet: %d", error);
		goto done;
	}

	rbuff_space = fd_cb->so->so_rcv.sb_hiwat;
	if (rbuff_space < 0) {
		rbuff_space = 0;
	}
	rbuff_space = FUNC4(rbuff_space);
	error = FUNC1(packet,
	                                      FLOW_DIVERT_TLV_SPACE_AVAILABLE,
	                                      sizeof(rbuff_space),
	                                      &rbuff_space);
	if (error) {
		goto done;
	}

	error = FUNC3(fd_cb, packet, TRUE);
	if (error) {
		goto done;
	}

done:
	if (error && packet != NULL) {
		FUNC5(packet);
	}

	return error;
}