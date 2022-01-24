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
struct flow_divert_pcb {int dummy; } ;
struct flow_divert_packet_header {scalar_t__ conn_id; int packet_type; } ;
struct flow_divert_group {int /*<<< orphan*/  ctl_unit; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_divert_pcb*) ; 
 int FD_CTL_RCVBUFF_SIZE ; 
#define  FLOW_DIVERT_PKT_APP_MAP_CREATE 134 
#define  FLOW_DIVERT_PKT_CLOSE 133 
#define  FLOW_DIVERT_PKT_CONNECT_RESULT 132 
#define  FLOW_DIVERT_PKT_DATA 131 
#define  FLOW_DIVERT_PKT_GROUP_INIT 130 
#define  FLOW_DIVERT_PKT_PROPERTIES_UPDATE 129 
#define  FLOW_DIVERT_PKT_READ_NOTIFY 128 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_group*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_divert_group*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct flow_divert_pcb* FUNC10 (scalar_t__,struct flow_divert_group*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct flow_divert_packet_header*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct flow_divert_pcb nil_pcb ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

__attribute__((used)) static int
FUNC15(mbuf_t packet, struct flow_divert_group *group)
{
	struct flow_divert_packet_header	hdr;
	int									error		= 0;
	struct flow_divert_pcb				*fd_cb;

	if (FUNC13(packet) < sizeof(hdr)) {
		FUNC0(LOG_ERR, &nil_pcb, "got a bad packet, length (%lu) < sizeof hdr (%lu)", FUNC13(packet), sizeof(hdr));
		error = EINVAL;
		goto done;
	}

	if (FUNC13(packet) > FD_CTL_RCVBUFF_SIZE) {
		FUNC0(LOG_ERR, &nil_pcb, "got a bad packet, length (%lu) > %d", FUNC13(packet), FD_CTL_RCVBUFF_SIZE);
		error = EINVAL;
		goto done;
	}

	error = FUNC11(packet, 0, sizeof(hdr), &hdr);
	if (error) {
		FUNC0(LOG_ERR, &nil_pcb, "mbuf_copydata failed for the header: %d", error);
		error = ENOBUFS;
		goto done;
	}

	hdr.conn_id = FUNC14(hdr.conn_id);

	if (hdr.conn_id == 0) {
		switch (hdr.packet_type) {
			case FLOW_DIVERT_PKT_GROUP_INIT:
				FUNC6(group, packet, sizeof(hdr));
				break;
			case FLOW_DIVERT_PKT_APP_MAP_CREATE:
				FUNC2(group, packet, sizeof(hdr));
				break;
			default:
				FUNC0(LOG_WARNING, &nil_pcb, "got an unknown message type: %d", hdr.packet_type);
				break;
		}
		goto done;
	}

	fd_cb = FUNC10(hdr.conn_id, group);		/* This retains the PCB */
	if (fd_cb == NULL) {
		if (hdr.packet_type != FLOW_DIVERT_PKT_CLOSE && hdr.packet_type != FLOW_DIVERT_PKT_READ_NOTIFY) {
			FUNC0(LOG_NOTICE, &nil_pcb, "got a %s message from group %d for an unknown pcb: %u", FUNC9(hdr.packet_type), group->ctl_unit, hdr.conn_id);
		}
		goto done;
	}

	switch (hdr.packet_type) {
		case FLOW_DIVERT_PKT_CONNECT_RESULT:
			FUNC4(fd_cb, packet, sizeof(hdr));
			break;
		case FLOW_DIVERT_PKT_CLOSE:
			FUNC3(fd_cb, packet, sizeof(hdr));
			break;
		case FLOW_DIVERT_PKT_DATA:
			FUNC5(fd_cb, packet, sizeof(hdr));
			break;
		case FLOW_DIVERT_PKT_READ_NOTIFY:
			FUNC8(fd_cb, packet, sizeof(hdr));
			break;
		case FLOW_DIVERT_PKT_PROPERTIES_UPDATE:
			FUNC7(fd_cb, packet, sizeof(hdr));
			break;
		default:
			FUNC0(LOG_WARNING, fd_cb, "got an unknown message type: %d", hdr.packet_type);
			break;
	}

	FUNC1(fd_cb);

done:
	FUNC12(packet);
	return error;
}