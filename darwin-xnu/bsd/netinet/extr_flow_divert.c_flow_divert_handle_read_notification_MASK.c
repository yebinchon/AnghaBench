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
typedef  int /*<<< orphan*/  uint32_t ;
struct flow_divert_pcb {int send_window; int /*<<< orphan*/ * so; } ;
typedef  int /*<<< orphan*/  read_count ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_READ_COUNT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_divert_pcb*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct flow_divert_pcb *fd_cb, mbuf_t packet, int offset)
{
	uint32_t	read_count;
	int		error			= 0;

	error = FUNC3(packet, offset, FLOW_DIVERT_TLV_READ_COUNT, sizeof(read_count), &read_count, NULL);
	if (error) {
		FUNC1(LOG_ERR, fd_cb, "failed to get the read count: %d", error);
		return;
	}

	FUNC1(LOG_DEBUG, fd_cb, "received a read notification for %u bytes", FUNC5(read_count));

	FUNC0(fd_cb);
	if (fd_cb->so != NULL) {
		FUNC6(fd_cb->so, 0);
		fd_cb->send_window += FUNC5(read_count);
		FUNC4(fd_cb, FALSE);
		FUNC7(fd_cb->so, 0);
	}
	FUNC2(fd_cb);
}