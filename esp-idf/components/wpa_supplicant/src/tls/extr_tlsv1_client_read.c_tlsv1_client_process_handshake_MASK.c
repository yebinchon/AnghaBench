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
struct tlsv1_client {int state; int /*<<< orphan*/  verify; } ;

/* Variables and functions */
#define  ACK_FINISHED 135 
 int FAILED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  SERVER_CERTIFICATE 134 
#define  SERVER_CERTIFICATE_REQUEST 133 
#define  SERVER_CHANGE_CIPHER_SPEC 132 
#define  SERVER_FINISHED 131 
#define  SERVER_HELLO 130 
#define  SERVER_HELLO_DONE 129 
#define  SERVER_KEY_EXCHANGE 128 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 scalar_t__ TLS_CONTENT_TYPE_ALERT ; 
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ; 
 scalar_t__ const TLS_HANDSHAKE_TYPE_HELLO_REQUEST ; 
 size_t FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*,scalar_t__**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC13(struct tlsv1_client *conn, u8 ct,
				   const u8 *buf, size_t *len,
				   u8 **out_data, size_t *out_len)
{
	if (ct == TLS_CONTENT_TYPE_ALERT) {
		if (*len < 2) {
			FUNC12(MSG_DEBUG, "TLSv1: Alert underflow");
			FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_DECODE_ERROR);
			return -1;
		}
		FUNC12(MSG_DEBUG, "TLSv1: Received alert %d:%d",
			   buf[0], buf[1]);
		*len = 2;
		conn->state = FAILED;
		return -1;
	}

	if (ct == TLS_CONTENT_TYPE_HANDSHAKE && *len >= 4 &&
	    buf[0] == TLS_HANDSHAKE_TYPE_HELLO_REQUEST) {
		size_t hr_len = FUNC0(buf + 1);
		if (hr_len > *len - 4) {
			FUNC12(MSG_DEBUG, "TLSv1: HelloRequest underflow");
			FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_DECODE_ERROR);
			return -1;
		}
		FUNC12(MSG_DEBUG, "TLSv1: Ignored HelloRequest");
		*len = 4 + hr_len;
		return 0;
	}

	switch (conn->state) {
	case SERVER_HELLO:
		if (FUNC8(conn, ct, buf, len))
			return -1;
		break;
	case SERVER_CERTIFICATE:
		if (FUNC4(conn, ct, buf, len))
			return -1;
		break;
	case SERVER_KEY_EXCHANGE:
		if (FUNC10(conn, ct, buf, len))
			return -1;
		break;
	case SERVER_CERTIFICATE_REQUEST:
		if (FUNC5(conn, ct, buf, len))
			return -1;
		break;
	case SERVER_HELLO_DONE:
		if (FUNC9(conn, ct, buf, len))
			return -1;
		break;
	case SERVER_CHANGE_CIPHER_SPEC:
		if (FUNC6(conn, ct, buf, len))
			return -1;
		break;
	case SERVER_FINISHED:
		if (FUNC7(conn, ct, buf, len)) {
			FUNC1("[debug] server finish process fall \n");
			return -1;
		}
		break;
	case ACK_FINISHED:
		if (out_data &&
		    FUNC3(conn, ct, buf, len, out_data,
						 out_len))
			return -1;
		break;
	default:
		FUNC12(MSG_DEBUG, "TLSv1: Unexpected state %d "
			   "while processing received message",
			   conn->state);
		return -1;
	}

	if (ct == TLS_CONTENT_TYPE_HANDSHAKE) {
		FUNC11(&conn->verify, buf, *len);
	}

	return 0;
}