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
struct tlsv1_server {int /*<<< orphan*/  state; int /*<<< orphan*/  rl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_FINISHED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_ALERT_UNEXPECTED_MESSAGE ; 
 scalar_t__ const TLS_CHANGE_CIPHER_SPEC ; 
 scalar_t__ TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct tlsv1_server *conn,
					  u8 ct, const u8 *in_data,
					  size_t *in_len)
{
	const u8 *pos;
	size_t left;

	if (ct != TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC) {
		FUNC2(MSG_DEBUG, "TLSv1: Expected ChangeCipherSpec; "
			   "received content type 0x%x", ct);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	if (left < 1) {
		FUNC2(MSG_DEBUG, "TLSv1: Too short ChangeCipherSpec");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	if (*pos != TLS_CHANGE_CIPHER_SPEC) {
		FUNC2(MSG_DEBUG, "TLSv1: Expected ChangeCipherSpec; "
			   "received data 0x%x", *pos);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC2(MSG_DEBUG, "TLSv1: Received ChangeCipherSpec");
	if (FUNC0(&conn->rl) < 0) {
		FUNC2(MSG_DEBUG, "TLSv1: Failed to change read cipher "
			   "for record layer");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	*in_len = pos + 1 - in_data;

	conn->state = CLIENT_FINISHED;

	return 0;
}