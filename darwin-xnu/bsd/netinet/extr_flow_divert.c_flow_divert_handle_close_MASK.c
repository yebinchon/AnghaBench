#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct flow_divert_pcb {TYPE_1__* so; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  how ;
typedef  int /*<<< orphan*/  close_error ;
struct TYPE_6__ {void* so_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_ERROR_CODE ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_HOW ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int SHUT_RD ; 
 int SHUT_RDWR ; 
 int SHUT_WR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_divert_pcb*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct flow_divert_pcb *fd_cb, mbuf_t packet, int offset)
{
	uint32_t	close_error;
	int			error			= 0;
	int			how;

	error = FUNC4(packet, offset, FLOW_DIVERT_TLV_ERROR_CODE, sizeof(close_error), &close_error, NULL);
	if (error) {
		FUNC1(LOG_ERR, fd_cb, "failed to get the close error: %d", error);
		return;
	}

	error = FUNC4(packet, offset, FLOW_DIVERT_TLV_HOW, sizeof(how), &how, NULL);
	if (error) {
		FUNC1(LOG_ERR, fd_cb, "failed to get the close how flag: %d", error);
		return;
	}

	how = FUNC7(how);

	FUNC1(LOG_INFO, fd_cb, "close received, how = %d", how);

	FUNC0(fd_cb);
	if (fd_cb->so != NULL) {
		FUNC10(fd_cb->so, 0);

		fd_cb->so->so_error = FUNC7(close_error);

		FUNC6(fd_cb, how, TRUE);
		
		how = FUNC5(fd_cb);
		if (how == SHUT_RDWR) {
			FUNC3(fd_cb->so);
		} else if (how == SHUT_RD) {
			FUNC8(fd_cb->so);
		} else if (how == SHUT_WR) {
			FUNC9(fd_cb->so);
		}

		FUNC11(fd_cb->so, 0);
	}
	FUNC2(fd_cb);
}