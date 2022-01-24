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
typedef  int /*<<< orphan*/  u_int32_t ;
struct netagent_session {int dummy; } ;
struct netagent_message_header {int message_type; int /*<<< orphan*/  message_id; int /*<<< orphan*/  message_payload_length; } ;
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
 int /*<<< orphan*/  NETAGENT_MESSAGE_ERROR_UNKNOWN_TYPE ; 
#define  NETAGENT_MESSAGE_TYPE_ASSERT 134 
#define  NETAGENT_MESSAGE_TYPE_ASSIGN_NEXUS 133 
#define  NETAGENT_MESSAGE_TYPE_GET 132 
#define  NETAGENT_MESSAGE_TYPE_REGISTER 131 
#define  NETAGENT_MESSAGE_TYPE_UNASSERT 130 
#define  NETAGENT_MESSAGE_TYPE_UNREGISTER 129 
#define  NETAGENT_MESSAGE_TYPE_UPDATE 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct netagent_message_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netagent_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netagent_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct netagent_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct netagent_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct netagent_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct netagent_session*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC11(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, mbuf_t packet, int flags)
{
#pragma unused(kctlref, unit, flags)
	struct netagent_session *session = (struct netagent_session *)unitinfo;
	struct netagent_message_header header;
	int error = 0;

	if (session == NULL) {
		FUNC1(LOG_ERR, "Got a NULL session");
		error = EINVAL;
		goto done;
	}

	if (FUNC4(packet) < sizeof(header)) {
		FUNC0(LOG_ERR, "Got a bad packet, length (%lu) < sizeof header (%lu)",
					FUNC4(packet), sizeof(header));
		error = EINVAL;
		goto done;
	}

	error = FUNC2(packet, 0, sizeof(header), &header);
	if (error) {
		FUNC0(LOG_ERR, "mbuf_copydata failed for the header: %d", error);
		error = ENOBUFS;
		goto done;
	}

	switch (header.message_type) {
		case NETAGENT_MESSAGE_TYPE_REGISTER: {
			FUNC7(session, header.message_id, header.message_payload_length,
									         packet, sizeof(header));
			break;
		}
		case NETAGENT_MESSAGE_TYPE_UNREGISTER: {
			FUNC8(session, header.message_id, header.message_payload_length,
											   packet, sizeof(header));
			break;
		}
		case NETAGENT_MESSAGE_TYPE_UPDATE: {
			FUNC9(session, header.message_id, header.message_payload_length,
								   packet, sizeof(header));
			break;
		}
		case NETAGENT_MESSAGE_TYPE_GET: {
			FUNC6(session, header.message_id, header.message_payload_length,
								packet, sizeof(header));
			break;
		}
		case NETAGENT_MESSAGE_TYPE_ASSERT: {
			FUNC1(LOG_ERR, "NETAGENT_MESSAGE_TYPE_ASSERT no longer supported");
			break;
		}
		case NETAGENT_MESSAGE_TYPE_UNASSERT: {
			FUNC1(LOG_ERR, "NETAGENT_MESSAGE_TYPE_UNASSERT no longer supported");
			break;
		}
		case NETAGENT_MESSAGE_TYPE_ASSIGN_NEXUS: {
			FUNC5(session, header.message_id, header.message_payload_length,
												 packet, sizeof(header));
			break;
		}
		default: {
			FUNC0(LOG_ERR, "Received unknown message type %d", header.message_type);
			FUNC10(session, header.message_type, header.message_id,
										 NETAGENT_MESSAGE_ERROR_UNKNOWN_TYPE);
			break;
		}
	}

done:
	FUNC3(packet);
	return (error);
}