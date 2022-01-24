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
struct wpabuf {int dummy; } ;
struct tlsv1_client {scalar_t__ state; struct wpabuf* partial_input; int /*<<< orphan*/  alert_description; scalar_t__ alert_level; int /*<<< orphan*/  rl; } ;

/* Variables and functions */
 scalar_t__ CLIENT_HELLO ; 
 scalar_t__ FAILED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct tlsv1_client*,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (struct tlsv1_client*,size_t*,int) ; 
 scalar_t__ FUNC6 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/ * FUNC7 (struct tlsv1_client*,scalar_t__,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC10 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC12 (struct wpabuf*) ; 
 size_t FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC15 (struct wpabuf**,size_t) ; 

u8 * FUNC16(struct tlsv1_client *conn,
			    const u8 *in_data, size_t in_len,
			    size_t *out_len, u8 **appl_data,
			    size_t *appl_data_len, int *need_more_data)
{
	const u8 *pos, *end;
	u8 *msg = NULL, *in_msg = NULL, *in_pos, *in_end, alert, ct;
	size_t in_msg_len;
	int no_appl_data;
	int used;

	if (need_more_data)
		*need_more_data = 0;

	if (conn->state == CLIENT_HELLO) {
		if (in_len)
			return NULL;
		return FUNC4(conn, out_len);
	}

	if (conn->partial_input) {
		if (FUNC15(&conn->partial_input, in_len) < 0) {
			FUNC9(MSG_DEBUG, "TLSv1: Failed to allocate "
				   "memory for pending record");
			FUNC3(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_INTERNAL_ERROR);
			goto failed;
		}
		FUNC14(conn->partial_input, in_data, in_len);
		in_data = FUNC12(conn->partial_input);
		in_len = FUNC13(conn->partial_input);
	}

	if (in_data == NULL || in_len == 0)
		return NULL;

	pos = in_data;
	end = in_data + in_len;
	in_msg = FUNC1(in_len);
	if (in_msg == NULL)
		return NULL;

	/* Each received packet may include multiple records */
	while (pos < end) {
		in_msg_len = in_len;
		used = FUNC8(&conn->rl, pos, end - pos,
					    in_msg, &in_msg_len, &alert);
		if (used < 0) {
			FUNC9(MSG_DEBUG, "TLSv1: Processing received "
				   "record failed");
			FUNC3(conn, TLS_ALERT_LEVEL_FATAL, alert);
			goto failed;
		}
		if (used == 0) {
			struct wpabuf *partial;
			FUNC9(MSG_DEBUG, "TLSv1: Need more data");
			partial = FUNC10(pos, end - pos);
			FUNC11(conn->partial_input);
			conn->partial_input = partial;
			if (conn->partial_input == NULL) {
				FUNC9(MSG_DEBUG, "TLSv1: Failed to "
					   "allocate memory for pending "
					   "record");
				FUNC3(conn, TLS_ALERT_LEVEL_FATAL,
					  TLS_ALERT_INTERNAL_ERROR);
				goto failed;
			}
			FUNC0(in_msg);
			if (need_more_data)
				*need_more_data = 1;
			return NULL;
		}
		ct = pos[0];

		in_pos = in_msg;
		in_end = in_msg + in_msg_len;

		/* Each received record may include multiple messages of the
		 * same ContentType. */
		while (in_pos < in_end) {
			in_msg_len = in_end - in_pos;
			if (FUNC6(conn, ct, in_pos,
							   &in_msg_len,
							   appl_data,
							   appl_data_len) < 0)
				goto failed;
			in_pos += in_msg_len;
		}

		pos += used;
	}

	FUNC0(in_msg);
	in_msg = NULL;

	no_appl_data = appl_data == NULL || *appl_data == NULL;
	msg = FUNC5(conn, out_len, no_appl_data);

failed:
	FUNC0(in_msg);
	if (conn->alert_level) {
		FUNC11(conn->partial_input);
		conn->partial_input = NULL;
		conn->state = FAILED;
		FUNC0(msg);
		msg = FUNC7(conn, conn->alert_level,
					      conn->alert_description,
					      out_len);
	} else if (msg == NULL) {
		msg = (u8 *)FUNC2(1);
		*out_len = 0;
	}

	if (need_more_data == NULL || !(*need_more_data)) {
		FUNC11(conn->partial_input);
		conn->partial_input = NULL;
	}

	return msg;
}