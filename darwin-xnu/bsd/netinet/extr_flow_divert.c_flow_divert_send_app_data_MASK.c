#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct flow_divert_pcb {size_t send_window; TYPE_5__* so; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
struct TYPE_6__ {int /*<<< orphan*/  sb_cc; } ;
struct TYPE_7__ {TYPE_1__ so_snd; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int,...) ; 
 size_t FLOW_DIVERT_CHUNK_SIZE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MBUF_DONTWAIT ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int FUNC2 (struct flow_divert_pcb*,int /*<<< orphan*/ *,size_t,struct sockaddr*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(struct flow_divert_pcb *fd_cb, mbuf_t data, struct sockaddr *toaddr)
{
	size_t	to_send		= FUNC3(data);
	int	error		= 0;

	if (to_send > fd_cb->send_window) {
		to_send = fd_cb->send_window;
	}

	if (fd_cb->so->so_snd.sb_cc > 0) {
		to_send = 0;	/* If the send buffer is non-empty, then we can't send anything */
	}

	if (FUNC1(fd_cb->so) == SOCK_STREAM) {
		size_t	sent		= 0;
		mbuf_t	remaining_data	= data;
		mbuf_t	pkt_data	= NULL;
		while (sent < to_send && remaining_data != NULL) {
			size_t	pkt_data_len;

			pkt_data = remaining_data;

			if ((to_send - sent) > FLOW_DIVERT_CHUNK_SIZE) {
				pkt_data_len = FLOW_DIVERT_CHUNK_SIZE;
			} else {
				pkt_data_len = to_send - sent;
			}

			if (pkt_data_len < FUNC3(pkt_data)) {
				error = FUNC4(pkt_data, pkt_data_len, MBUF_DONTWAIT, &remaining_data);
				if (error) {
					FUNC0(LOG_ERR, fd_cb, "mbuf_split failed: %d", error);
					pkt_data = NULL;
					break;
				}
			} else {
				remaining_data = NULL;
			}

			error = FUNC2(fd_cb, pkt_data, pkt_data_len, NULL, FALSE);

			if (error) {
				break;
			}

			pkt_data = NULL;
			sent += pkt_data_len;
		}

		fd_cb->send_window -= sent;

		error = 0;

		if (pkt_data != NULL) {
			if (FUNC8(&fd_cb->so->so_snd) > 0) {
				if (!FUNC7(&fd_cb->so->so_snd, pkt_data)) {
					FUNC0(LOG_ERR, fd_cb, "sbappendstream failed with pkt_data, send buffer size = %u, send_window = %u\n",
							fd_cb->so->so_snd.sb_cc, fd_cb->send_window);
				}
			} else {
				error = ENOBUFS;
			}
		}

		if (remaining_data != NULL) {
			if (FUNC8(&fd_cb->so->so_snd) > 0) {
				if (!FUNC7(&fd_cb->so->so_snd, remaining_data)) {
					FUNC0(LOG_ERR, fd_cb, "sbappendstream failed with remaining_data, send buffer size = %u, send_window = %u\n",
							fd_cb->so->so_snd.sb_cc, fd_cb->send_window);
				}
			} else {
				error = ENOBUFS;
			}
		}
	} else if (FUNC1(fd_cb->so) == SOCK_DGRAM) {
		if (to_send || FUNC3(data) == 0) {
			error = FUNC2(fd_cb, data, to_send, toaddr, FALSE);
			if (error) {
				FUNC0(LOG_ERR, fd_cb, "flow_divert_send_data_packet failed. send data size = %lu", to_send);
			} else {
				fd_cb->send_window -= to_send;
			}
		} else {
			/* buffer it */
			if (FUNC8(&fd_cb->so->so_snd) >= (int)FUNC3(data)) {
				if (toaddr != NULL) {
					if (!FUNC5(&fd_cb->so->so_snd, toaddr, data, NULL, &error)) {
						FUNC0(LOG_ERR, fd_cb,
							"sbappendaddr failed. send buffer size = %u, send_window = %u, error = %d\n",
							fd_cb->so->so_snd.sb_cc, fd_cb->send_window, error);
					}
				} else {
					if (!FUNC6(&fd_cb->so->so_snd, data)) {
						FUNC0(LOG_ERR, fd_cb,
							"sbappendrecord failed. send buffer size = %u, send_window = %u, error = %d\n",
							fd_cb->so->so_snd.sb_cc, fd_cb->send_window, error);
					}
				}
			} else {
				error = ENOBUFS;
			}
		}
	}

	return error;
}