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
typedef  int /*<<< orphan*/  u8 ;
struct tlsv1_server {int /*<<< orphan*/  rl; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct tlsv1_server *conn,
					       u8 **msgpos, u8 *end)
{
	size_t rlen;
	u8 payload[1];

	FUNC3(MSG_DEBUG, "TLSv1: Send ChangeCipherSpec");

	payload[0] = TLS_CHANGE_CIPHER_SPEC;

	if (FUNC1(&conn->rl, TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC,
			      *msgpos, end - *msgpos, payload, sizeof(payload),
			      &rlen) < 0) {
		FUNC3(MSG_DEBUG, "TLSv1: Failed to create a record");
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	if (FUNC0(&conn->rl) < 0) {
		FUNC3(MSG_DEBUG, "TLSv1: Failed to set write cipher for "
			   "record layer");
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	*msgpos += rlen;

	return 0;
}