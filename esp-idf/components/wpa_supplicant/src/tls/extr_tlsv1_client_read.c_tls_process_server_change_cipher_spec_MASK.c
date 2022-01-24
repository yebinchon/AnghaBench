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
typedef  scalar_t__ u8 ;
struct tlsv1_client {int (* session_ticket_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  state; int /*<<< orphan*/  rl; int /*<<< orphan*/  session_ticket_cb_ctx; scalar_t__ use_session_ticket; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SERVER_CERTIFICATE ; 
 int /*<<< orphan*/  SERVER_FINISHED ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_ALERT_UNEXPECTED_MESSAGE ; 
 scalar_t__ const TLS_CHANGE_CIPHER_SPEC ; 
 scalar_t__ TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct tlsv1_client *conn,
						 u8 ct, const u8 *in_data,
						 size_t *in_len)
{
	const u8 *pos;
	size_t left;

	if (ct != TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC) {
		FUNC5(MSG_DEBUG, "TLSv1: Expected ChangeCipherSpec; "
			   "received content type 0x%x", ct);
		if (conn->use_session_ticket) {
			int res;
			FUNC5(MSG_DEBUG, "TLSv1: Server may have "
				   "rejected SessionTicket");
			conn->use_session_ticket = 0;

			/* Notify upper layers that SessionTicket failed */
			res = conn->session_ticket_cb(
				conn->session_ticket_cb_ctx, NULL, 0, NULL,
				NULL, NULL);
			if (res < 0) {
				FUNC5(MSG_DEBUG, "TLSv1: SessionTicket "
					   "callback indicated failure");
				FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
					  TLS_ALERT_HANDSHAKE_FAILURE);
				return -1;
			}
            FUNC0("[Debug] set the state to server certificate \n");
			conn->state = SERVER_CERTIFICATE;
			return FUNC3(conn, ct, in_data,
						       in_len);
		}
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	if (left < 1) {
		FUNC5(MSG_DEBUG, "TLSv1: Too short ChangeCipherSpec");
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	if (*pos != TLS_CHANGE_CIPHER_SPEC) {
		FUNC5(MSG_DEBUG, "TLSv1: Expected ChangeCipherSpec; "
			   "received data 0x%x", *pos);
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC5(MSG_DEBUG, "TLSv1: Received ChangeCipherSpec");
	if (FUNC4(&conn->rl) < 0) {
		FUNC5(MSG_DEBUG, "TLSv1: Failed to change read cipher "
			   "for record layer");
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	*in_len = pos + 1 - in_data;
	conn->state = SERVER_FINISHED;

	return 0;
}