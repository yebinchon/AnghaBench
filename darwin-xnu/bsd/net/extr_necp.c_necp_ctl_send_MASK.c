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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct necp_session {int /*<<< orphan*/  proc_pid; int /*<<< orphan*/  proc_uuid; scalar_t__ proc_locked; } ;
struct necp_packet_header {int packet_type; int /*<<< orphan*/  message_id; } ;
typedef  int /*<<< orphan*/  proc_uuid ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  kern_ctl_ref ;
typedef  int /*<<< orphan*/  header ;
typedef  int errno_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NECP_ERROR_INVALID_PROCESS ; 
 int /*<<< orphan*/  NECP_ERROR_UNKNOWN_PACKET_TYPE ; 
#define  NECP_PACKET_TYPE_LOCK_SESSION_TO_PROC 138 
#define  NECP_PACKET_TYPE_POLICY_ADD 137 
#define  NECP_PACKET_TYPE_POLICY_APPLY_ALL 136 
#define  NECP_PACKET_TYPE_POLICY_DELETE 135 
#define  NECP_PACKET_TYPE_POLICY_DELETE_ALL 134 
#define  NECP_PACKET_TYPE_POLICY_DUMP_ALL 133 
#define  NECP_PACKET_TYPE_POLICY_GET 132 
#define  NECP_PACKET_TYPE_POLICY_LIST_ALL 131 
#define  NECP_PACKET_TYPE_REGISTER_SERVICE 130 
#define  NECP_PACKET_TYPE_SET_SESSION_PRIORITY 129 
#define  NECP_PACKET_TYPE_UNREGISTER_SERVICE 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct necp_packet_header*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct necp_session*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC21(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, mbuf_t packet, int flags)
{
#pragma unused(kctlref, unit, flags)
	struct necp_session *session = (struct necp_session *)unitinfo;
	struct necp_packet_header header;
	int error = 0;

	if (session == NULL) {
		FUNC1(LOG_ERR, "Got a NULL session");
		error = EINVAL;
		goto done;
	}

	if (FUNC5(packet) < sizeof(header)) {
		FUNC0(LOG_ERR, "Got a bad packet, length (%lu) < sizeof header (%lu)", FUNC5(packet), sizeof(header));
		error = EINVAL;
		goto done;
	}

	error = FUNC3(packet, 0, sizeof(header), &header);
	if (error) {
		FUNC0(LOG_ERR, "mbuf_copydata failed for the header: %d", error);
		error = ENOBUFS;
		goto done;
	}

	if (session->proc_locked) {
		// Verify that the calling process is allowed to send messages
		uuid_t proc_uuid;
		FUNC18(FUNC2(), proc_uuid, sizeof(proc_uuid));
		if (FUNC20(proc_uuid, session->proc_uuid) != 0) {
			FUNC17(session, header.packet_type, header.message_id, NECP_ERROR_INVALID_PROCESS);
			goto done;
		}
	} else {
		// If not locked, update the proc_uuid and proc_pid of the session
		FUNC18(FUNC2(), session->proc_uuid, sizeof(session->proc_uuid));
		session->proc_pid = FUNC19(FUNC2());
	}

	switch (header.packet_type) {
		case NECP_PACKET_TYPE_POLICY_ADD: {
			FUNC7(session, header.message_id, packet, NULL, 0, sizeof(header), NULL);
			break;
		}
		case NECP_PACKET_TYPE_POLICY_GET: {
			FUNC12(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_POLICY_DELETE: {
			FUNC9(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_POLICY_APPLY_ALL: {
			FUNC8(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_POLICY_LIST_ALL: {
			FUNC13(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_POLICY_DELETE_ALL: {
			FUNC10(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_POLICY_DUMP_ALL: {
			FUNC11(session, header.message_id, packet, 0, 0, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_SET_SESSION_PRIORITY: {
			FUNC15(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_LOCK_SESSION_TO_PROC: {
			FUNC6(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_REGISTER_SERVICE: {
			FUNC14(session, header.message_id, packet, sizeof(header));
			break;
		}
		case NECP_PACKET_TYPE_UNREGISTER_SERVICE: {
			FUNC16(session, header.message_id, packet, sizeof(header));
			break;
		}
		default: {
			FUNC0(LOG_ERR, "Received unknown message type %d", header.packet_type);
			FUNC17(session, header.packet_type, header.message_id, NECP_ERROR_UNKNOWN_PACKET_TYPE);
			break;
		}
	}

done:
	FUNC4(packet);
	return (error);
}