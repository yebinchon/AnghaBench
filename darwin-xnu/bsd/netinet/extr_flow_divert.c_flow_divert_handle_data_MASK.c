#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct flow_divert_pcb {size_t bytes_received; TYPE_3__* so; int /*<<< orphan*/  sb_size; struct sockaddr* remote_address; } ;
typedef  int /*<<< orphan*/  remote_address ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  sb_cc; } ;
struct TYPE_12__ {int so_state; TYPE_6__ so_rcv; TYPE_2__* so_proto; } ;
struct TYPE_11__ {TYPE_1__* pr_domain; } ;
struct TYPE_10__ {int /*<<< orphan*/  dom_family; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_REMOTE_ADDR ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  MBUF_DONTWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int SS_CANTRCVMORE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct flow_divert_pcb*,size_t,scalar_t__) ; 
 scalar_t__ FUNC7 (struct flow_divert_pcb*) ; 
 scalar_t__ FUNC8 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr**) ; 
 int /*<<< orphan*/ * FUNC11 (struct flow_divert_pcb*) ; 
 scalar_t__ FUNC12 (struct sockaddr*) ; 
 int FUNC13 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,struct sockaddr_storage*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct flow_divert_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct flow_divert_pcb*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 size_t FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (TYPE_6__*,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC25(struct flow_divert_pcb *fd_cb, mbuf_t packet, size_t offset)
{
	FUNC0(fd_cb);
	if (fd_cb->so != NULL) {
		int		error		= 0;
		mbuf_t	data		= NULL;
		size_t	data_size;
		struct sockaddr_storage remote_address;
		boolean_t got_remote_sa = FALSE;

		FUNC22(fd_cb->so, 0);

		if (FUNC5(fd_cb->so) == SOCK_DGRAM) {
			uint32_t val_size = 0;

			/* check if we got remote address with data */
			FUNC19(&remote_address, 0, sizeof(remote_address));
			error = FUNC13(packet, offset, FLOW_DIVERT_TLV_REMOTE_ADDR, sizeof(remote_address), &remote_address, &val_size);
			if (error || val_size > sizeof(remote_address)) {
				FUNC2(LOG_INFO, fd_cb, "No remote address provided");
				error = 0;
			} else {
				/* validate the address */
				if (FUNC12((struct sockaddr *)&remote_address)) {
					got_remote_sa = TRUE;
				}
				offset += (sizeof(uint8_t) + sizeof(uint32_t) + val_size);
			}
		}

		data_size = (FUNC17(packet) - offset);

		FUNC1(LOG_DEBUG, fd_cb, "received %lu bytes of data", data_size);

		error = FUNC18(packet, offset, MBUF_DONTWAIT, &data);
		if (error || data == NULL) {
			FUNC1(LOG_ERR, fd_cb, "mbuf_split failed: %d", error);
		} else {
			if (FUNC7(fd_cb) || 
			    FUNC8(fd_cb))
			{
				FUNC15(fd_cb, SHUT_RDWR, TRUE);
				FUNC14(fd_cb, SHUT_RDWR);
				FUNC9(fd_cb->so);
			} else if (!(fd_cb->so->so_state & SS_CANTRCVMORE)) {
				if (FUNC5(fd_cb->so) == SOCK_STREAM) {
					if (FUNC21(&fd_cb->so->so_rcv, data)) {
						fd_cb->bytes_received += data_size;
						FUNC6(fd_cb, data_size, FALSE);
						fd_cb->sb_size = fd_cb->so->so_rcv.sb_cc;
						FUNC24(fd_cb->so);
						data = NULL;
					} else {
						FUNC2(LOG_ERR, fd_cb, "received data, but appendstream failed");
					}
				} else if (FUNC5(fd_cb->so) == SOCK_DGRAM) {
					struct sockaddr *append_sa;
					mbuf_t mctl;

					if (got_remote_sa == TRUE) {
						error = FUNC10(fd_cb->so->so_proto->pr_domain->dom_family,
								(struct sockaddr *)&remote_address, &append_sa);
					} else {
						error = FUNC10(fd_cb->so->so_proto->pr_domain->dom_family,
								fd_cb->remote_address, &append_sa);
					}
					if (error) {
						FUNC2(LOG_ERR, fd_cb, "failed to dup the socket address.");
					}

					mctl = FUNC11(fd_cb);
					if (FUNC20(&fd_cb->so->so_rcv, append_sa, data, mctl, NULL)) {
						fd_cb->bytes_received += data_size;
						FUNC6(fd_cb, data_size, FALSE);
						fd_cb->sb_size = fd_cb->so->so_rcv.sb_cc;
						FUNC24(fd_cb->so);
						data = NULL;
					} else {
						FUNC2(LOG_ERR, fd_cb, "received data, but sbappendaddr failed");
					}
					if (!error) {
						FUNC4(append_sa, M_TEMP);
					}
				}
			}
		}
		FUNC23(fd_cb->so, 0);

		if (data != NULL) {
			FUNC16(data);
		}
	}
	FUNC3(fd_cb);
}