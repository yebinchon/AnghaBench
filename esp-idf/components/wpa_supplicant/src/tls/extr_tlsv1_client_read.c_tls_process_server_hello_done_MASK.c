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
struct tlsv1_client {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_KEY_EXCHANGE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_ALERT_UNEXPECTED_MESSAGE ; 
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE ; 
 size_t FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct tlsv1_client *conn, u8 ct,
					 const u8 *in_data, size_t *in_len)
{
	const u8 *pos, *end;
	size_t left, len;
	u8 type;

	if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
		FUNC2(MSG_DEBUG, "TLSv1: Expected Handshake; "
			   "received content type 0x%x", ct);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	if (left < 4) {
		FUNC2(MSG_DEBUG, "TLSv1: Too short ServerHelloDone "
			   "(left=%lu)", (unsigned long) left);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	type = *pos++;
	len = FUNC0(pos);
	pos += 3;
	left -= 4;

	if (len > left) {
		FUNC2(MSG_DEBUG, "TLSv1: Mismatch in ServerHelloDone "
			   "length (len=%lu != left=%lu)",
			   (unsigned long) len, (unsigned long) left);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}
	end = pos + len;

	if (type != TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE) {
		FUNC2(MSG_DEBUG, "TLSv1: Received unexpected handshake "
			   "message %d (expected ServerHelloDone)", type);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC2(MSG_DEBUG, "TLSv1: Received ServerHelloDone");

	*in_len = end - in_data;
	conn->state = CLIENT_KEY_EXCHANGE;

	return 0;
}