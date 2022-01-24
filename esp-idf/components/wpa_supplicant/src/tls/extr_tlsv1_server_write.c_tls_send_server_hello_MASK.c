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
struct tlsv1_server {int /*<<< orphan*/  state; scalar_t__ use_session_ticket; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  CLIENT_CERTIFICATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int FUNC2 (struct tlsv1_server*) ; 
 scalar_t__ FUNC3 (struct tlsv1_server*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct tlsv1_server*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tlsv1_server*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tlsv1_server*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tlsv1_server*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct tlsv1_server*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct tlsv1_server*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 * FUNC10(struct tlsv1_server *conn, size_t *out_len)
{
	u8 *msg, *end, *pos;
	size_t msglen;

	*out_len = 0;

	msglen = 1000 + FUNC2(conn);

	msg = FUNC1(msglen);
	if (msg == NULL)
		return NULL;

	pos = msg;
	end = msg + msglen;

	if (FUNC7(conn, &pos, end) < 0) {
		FUNC0(msg);
		return NULL;
	}

	if (conn->use_session_ticket) {
		/* Abbreviated handshake using session ticket; RFC 4507 */
		if (FUNC5(conn, &pos, end) < 0 ||
		    FUNC6(conn, &pos, end) < 0) {
			FUNC0(msg);
			return NULL;
		}

		*out_len = pos - msg;

		conn->state = CHANGE_CIPHER_SPEC;

		return msg;
	}

	/* Full handshake */
	if (FUNC3(conn, &pos, end) < 0 ||
	    FUNC9(conn, &pos, end) < 0 ||
	    FUNC4(conn, &pos, end) < 0 ||
	    FUNC8(conn, &pos, end) < 0) {
		FUNC0(msg);
		return NULL;
	}

	*out_len = pos - msg;

	conn->state = CLIENT_CERTIFICATE;

	return msg;
}