#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ tls_key_exchange ;
struct TYPE_4__ {int /*<<< orphan*/  cipher_suite; } ;
struct tlsv1_server {scalar_t__* dh_secret; size_t dh_secret_len; int /*<<< orphan*/  verify; TYPE_2__ rl; TYPE_1__* cred; } ;
struct tls_cipher_suite {scalar_t__ key_exchange; } ;
struct TYPE_3__ {scalar_t__* dh_p; scalar_t__* dh_g; size_t dh_p_len; size_t dh_g_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE ; 
 scalar_t__ TLS_KEY_X_DH_anon ; 
 scalar_t__ TLS_KEY_X_NULL ; 
 int /*<<< orphan*/  TLS_RECORD_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__*,size_t,scalar_t__*,int,scalar_t__*,size_t,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 void* FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (scalar_t__*,size_t) ; 
 struct tls_cipher_suite* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC17(struct tlsv1_server *conn,
					 u8 **msgpos, u8 *end)
{
	tls_key_exchange keyx;
	const struct tls_cipher_suite *suite;
	u8 *pos, *rhdr, *hs_start, *hs_length;
	size_t rlen;
	u8 *dh_ys;
	size_t dh_ys_len;

	suite = FUNC9(conn->rl.cipher_suite);
	if (suite == NULL)
		keyx = TLS_KEY_X_NULL;
	else
		keyx = suite->key_exchange;

	if (!FUNC10(conn->rl.cipher_suite)) {
		FUNC16(MSG_DEBUG, "TLSv1: No ServerKeyExchange needed");
		return 0;
	}

	if (keyx != TLS_KEY_X_DH_anon) {
		/* TODO? */
		FUNC16(MSG_DEBUG, "TLSv1: ServerKeyExchange not yet "
			   "supported with key exchange type %d", keyx);
		return -1;
	}

	if (conn->cred == NULL || conn->cred->dh_p == NULL ||
	    conn->cred->dh_g == NULL) {
		FUNC16(MSG_DEBUG, "TLSv1: No DH parameters available for "
			   "ServerKeyExhcange");
		return -1;
	}

	FUNC3(conn->dh_secret);
	conn->dh_secret_len = conn->cred->dh_p_len;
	conn->dh_secret = FUNC4(conn->dh_secret_len);
	if (conn->dh_secret == NULL) {
		FUNC16(MSG_DEBUG, "TLSv1: Failed to allocate "
			   "memory for secret (Diffie-Hellman)");
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	if (FUNC8(conn->dh_secret, conn->dh_secret_len)) {
		FUNC16(MSG_DEBUG, "TLSv1: Failed to get random "
			   "data for Diffie-Hellman");
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC3(conn->dh_secret);
		conn->dh_secret = NULL;
		return -1;
	}

	if (FUNC5(conn->dh_secret, conn->cred->dh_p, conn->dh_secret_len) >
	    0)
		conn->dh_secret[0] = 0; /* make sure secret < p */

	pos = conn->dh_secret;
	while (pos + 1 < conn->dh_secret + conn->dh_secret_len && *pos == 0)
		pos++;
	if (pos != conn->dh_secret) {
		FUNC7(conn->dh_secret, pos,
			   conn->dh_secret_len - (pos - conn->dh_secret));
		conn->dh_secret_len -= pos - conn->dh_secret;
	}
	FUNC15(MSG_DEBUG, "TLSv1: DH server's secret value",
			conn->dh_secret, conn->dh_secret_len);

	/* Ys = g^secret mod p */
	dh_ys_len = conn->cred->dh_p_len;
	dh_ys = FUNC4(dh_ys_len);
	if (dh_ys == NULL) {
		FUNC16(MSG_DEBUG, "TLSv1: Failed to allocate memory for "
			   "Diffie-Hellman");
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	if (FUNC2(conn->cred->dh_g, conn->cred->dh_g_len,
					        conn->dh_secret, conn->dh_secret_len,
					        conn->cred->dh_p, conn->cred->dh_p_len,
					        dh_ys, &dh_ys_len)) {
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				        TLS_ALERT_INTERNAL_ERROR);
		FUNC3(dh_ys);
		return -1;
	}


	FUNC14(MSG_DEBUG, "TLSv1: DH Ys (server's public value)",
		    dh_ys, dh_ys_len);

	/*
	 * struct {
	 *    select (KeyExchangeAlgorithm) {
	 *       case diffie_hellman:
	 *          ServerDHParams params;
	 *          Signature signed_params;
	 *       case rsa:
	 *          ServerRSAParams params;
	 *          Signature signed_params;
	 *    };
	 * } ServerKeyExchange;
	 *
	 * struct {
	 *    opaque dh_p<1..2^16-1>;
	 *    opaque dh_g<1..2^16-1>;
	 *    opaque dh_Ys<1..2^16-1>;
	 * } ServerDHParams;
	 */

	pos = *msgpos;

	FUNC16(MSG_DEBUG, "TLSv1: Send ServerKeyExchange");
	rhdr = pos;
	pos += TLS_RECORD_HEADER_LEN;

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	hs_start = pos;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE;
	/* uint24 length (to be filled) */
	hs_length = pos;
	pos += 3;

	/* body - ServerDHParams */
	/* dh_p */
	if (pos + 2 + conn->cred->dh_p_len > end) {
		FUNC16(MSG_DEBUG, "TLSv1: Not enough buffer space for "
			   "dh_p");
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC3(dh_ys);
		return -1;
	}
	FUNC0(pos, conn->cred->dh_p_len);
	pos += 2;
	FUNC6(pos, conn->cred->dh_p, conn->cred->dh_p_len);
	pos += conn->cred->dh_p_len;

	/* dh_g */
	if (pos + 2 + conn->cred->dh_g_len > end) {
		FUNC16(MSG_DEBUG, "TLSv1: Not enough buffer space for "
			   "dh_g");
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC3(dh_ys);
		return -1;
	}
	FUNC0(pos, conn->cred->dh_g_len);
	pos += 2;
	FUNC6(pos, conn->cred->dh_g, conn->cred->dh_g_len);
	pos += conn->cred->dh_g_len;

	/* dh_Ys */
	if (pos + 2 + dh_ys_len > end) {
		FUNC16(MSG_DEBUG, "TLSv1: Not enough buffer space for "
			   "dh_Ys");
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC3(dh_ys);
		return -1;
	}
	FUNC0(pos, dh_ys_len);
	pos += 2;
	FUNC6(pos, dh_ys, dh_ys_len);
	pos += dh_ys_len;
	FUNC3(dh_ys);

	FUNC1(hs_length, pos - hs_length - 3);

	if (FUNC12(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      rhdr, end - rhdr, hs_start, pos - hs_start,
			      &rlen) < 0) {
		FUNC16(MSG_DEBUG, "TLSv1: Failed to generate a record");
		FUNC13(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	pos = rhdr + rlen;

	FUNC11(&conn->verify, hs_start, pos - hs_start);

	*msgpos = pos;

	return 0;
}