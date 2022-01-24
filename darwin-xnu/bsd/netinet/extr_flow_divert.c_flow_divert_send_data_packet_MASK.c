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
struct sockaddr {int dummy; } ;
struct flow_divert_pcb {size_t bytes_sent; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int errno_t ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int /*<<< orphan*/  FLOW_DIVERT_PKT_DATA ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct flow_divert_pcb*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sockaddr*) ; 
 int FUNC3 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (struct flow_divert_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static errno_t
FUNC9(struct flow_divert_pcb *fd_cb, mbuf_t data, size_t data_len, struct sockaddr *toaddr, Boolean force)
{
	mbuf_t	packet;
	mbuf_t	last;
	int		error	= 0;

	error = FUNC3(fd_cb, FLOW_DIVERT_PKT_DATA, &packet);
	if (error) {
		FUNC0(LOG_ERR, fd_cb, "flow_divert_packet_init failed: %d", error);
		return error;
	}

	if (toaddr != NULL) {
		error = FUNC2(packet, toaddr);
		if (error) {
			FUNC0(LOG_ERR, fd_cb, "flow_divert_append_target_endpoint_tlv() failed: %d", error);
			return error;
		}
	}

	if (data_len > 0 && data != NULL) {
		last = FUNC5(packet);
		FUNC8(last, data);
		FUNC7(packet, data_len);
	}
	error = FUNC4(fd_cb, packet, force);

	if (error) {
		FUNC8(last, NULL);
		FUNC6(packet);
	} else {
		fd_cb->bytes_sent += data_len;
		FUNC1(fd_cb, data_len, TRUE);
	}

	return error;
}