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
struct flow_divert_pcb {int dummy; } ;
typedef  int /*<<< orphan*/  net_read_count ;
typedef  int /*<<< orphan*/ * mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int /*<<< orphan*/  FLOW_DIVERT_PKT_READ_NOTIFY ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_READ_COUNT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (struct flow_divert_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct flow_divert_pcb *fd_cb, uint32_t read_count)
{
	int		error		= 0;
	mbuf_t	packet		= NULL;
	uint32_t	net_read_count	= FUNC4(read_count);

	error = FUNC2(fd_cb, FLOW_DIVERT_PKT_READ_NOTIFY, &packet);
	if (error) {
		FUNC0(LOG_ERR, fd_cb, "failed to create a read notification packet: %d", error);
		goto done;
	}

	error = FUNC1(packet, FLOW_DIVERT_TLV_READ_COUNT, sizeof(net_read_count), &net_read_count);
	if (error) {
		FUNC0(LOG_ERR, fd_cb, "failed to add the read count: %d", error);
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