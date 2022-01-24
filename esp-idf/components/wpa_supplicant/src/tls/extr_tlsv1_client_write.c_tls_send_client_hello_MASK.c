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
struct tlsv1_client {int num_cipher_suites; int client_hello_ext_len; int session_id_len; int* cipher_suites; int /*<<< orphan*/  state; int /*<<< orphan*/  rl; int /*<<< orphan*/  verify; int /*<<< orphan*/  client_hello_ext; int /*<<< orphan*/  session_id; int /*<<< orphan*/  client_random; } ;
struct os_time {int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  SERVER_HELLO ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_COMPRESSION_NULL ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_CLIENT_HELLO ; 
 int TLS_RANDOM_LEN ; 
 int TLS_RECORD_HEADER_LEN ; 
 int TLS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct os_time*) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

u8 * FUNC13(struct tlsv1_client *conn, size_t *out_len)
{
	u8 *hello, *end, *pos, *hs_length, *hs_start, *rhdr;
	struct os_time now;
	size_t len, i;

	FUNC12(MSG_DEBUG, "TLSv1: Send ClientHello");
	*out_len = 0;

	FUNC4(&now);
	FUNC2(conn->client_random, now.sec);
	if (FUNC7(conn->client_random + 4, TLS_RANDOM_LEN - 4)) {
		FUNC12(MSG_ERROR, "TLSv1: Could not generate "
			   "client_random");
		return NULL;
	}
	FUNC11(MSG_MSGDUMP, "TLSv1: client_random",
		    conn->client_random, TLS_RANDOM_LEN);

	len = 100 + conn->num_cipher_suites * 2 + conn->client_hello_ext_len;
	hello = FUNC5(len);
	if (hello == NULL)
		return NULL;
	end = hello + len;

	rhdr = hello;
	pos = rhdr + TLS_RECORD_HEADER_LEN;

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	hs_start = pos;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_CLIENT_HELLO;
	/* uint24 length (to be filled) */
	hs_length = pos;
	pos += 3;
	/* body - ClientHello */
	/* ProtocolVersion client_version */
	FUNC0(pos, TLS_VERSION);
	pos += 2;
	/* Random random: uint32 gmt_unix_time, opaque random_bytes */
	FUNC6(pos, conn->client_random, TLS_RANDOM_LEN);
	pos += TLS_RANDOM_LEN;
	/* SessionID session_id */
	*pos++ = conn->session_id_len;
	FUNC6(pos, conn->session_id, conn->session_id_len);
	pos += conn->session_id_len;
	/* CipherSuite cipher_suites<2..2^16-1> */
	FUNC0(pos, 2 * conn->num_cipher_suites);
	pos += 2;
	for (i = 0; i < conn->num_cipher_suites; i++) {
		FUNC0(pos, conn->cipher_suites[i]);
		pos += 2;
	}
	/* CompressionMethod compression_methods<1..2^8-1> */
	*pos++ = 1;
	*pos++ = TLS_COMPRESSION_NULL;

	if (conn->client_hello_ext) {
		FUNC6(pos, conn->client_hello_ext,
			  conn->client_hello_ext_len);
		pos += conn->client_hello_ext_len;
	}

	FUNC1(hs_length, pos - hs_length - 3);
	FUNC9(&conn->verify, hs_start, pos - hs_start);

	if (FUNC10(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      rhdr, end - rhdr, hs_start, pos - hs_start,
			      out_len) < 0) {
		FUNC12(MSG_DEBUG, "TLSv1: Failed to create TLS record");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC3(hello);
		return NULL;
	}

	conn->state = SERVER_HELLO;

	return hello;
}