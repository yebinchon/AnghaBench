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
typedef  int /*<<< orphan*/  zero ;
typedef  int uint32_t ;
struct flow_divert_pcb {int dummy; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int /*<<< orphan*/  how ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int /*<<< orphan*/  FLOW_DIVERT_PKT_CLOSE ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_ERROR_CODE ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_HOW ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (struct flow_divert_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct flow_divert_pcb *fd_cb, int how)
{
	int		error	= 0;
	mbuf_t	packet	= NULL;
	uint32_t	zero	= 0;

	error = FUNC2(fd_cb, FLOW_DIVERT_PKT_CLOSE, &packet);
	if (error) {
		FUNC0(LOG_ERR, fd_cb, "failed to create a close packet: %d", error);
		goto done;
	}

	error = FUNC1(packet, FLOW_DIVERT_TLV_ERROR_CODE, sizeof(zero), &zero);
	if (error) {
		FUNC0(LOG_ERR, fd_cb, "failed to add the error code TLV: %d", error);
		goto done;
	}

	how = FUNC4(how);
	error = FUNC1(packet, FLOW_DIVERT_TLV_HOW, sizeof(how), &how);
	if (error) {
		FUNC0(LOG_ERR, fd_cb, "failed to add the how flag: %d", error);
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