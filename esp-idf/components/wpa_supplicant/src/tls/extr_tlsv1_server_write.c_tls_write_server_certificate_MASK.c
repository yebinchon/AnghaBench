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
typedef  int /*<<< orphan*/  u8 ;
struct x509_certificate {int cert_len; int /*<<< orphan*/  issuer; int /*<<< orphan*/  cert_start; } ;
struct TYPE_4__ {int /*<<< orphan*/  cipher_suite; } ;
struct tlsv1_server {int /*<<< orphan*/  verify; TYPE_2__ rl; TYPE_1__* cred; } ;
struct tls_cipher_suite {scalar_t__ key_exchange; } ;
struct TYPE_3__ {struct x509_certificate* cert; int /*<<< orphan*/  trusted_certs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_CERTIFICATE ; 
 scalar_t__ TLS_KEY_X_DH_anon ; 
 int /*<<< orphan*/  TLS_RECORD_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct tls_cipher_suite* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct x509_certificate* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct x509_certificate*) ; 

__attribute__((used)) static int FUNC9(struct tlsv1_server *conn,
					u8 **msgpos, u8 *end)
{
	u8 *pos, *rhdr, *hs_start, *hs_length, *cert_start;
	size_t rlen;
	struct x509_certificate *cert;
	const struct tls_cipher_suite *suite;

	suite = FUNC2(conn->rl.cipher_suite);
	if (suite && suite->key_exchange == TLS_KEY_X_DH_anon) {
		FUNC6(MSG_DEBUG, "TLSv1: Do not send Certificate when "
			   "using anonymous DH");
		return 0;
	}

	pos = *msgpos;

	FUNC6(MSG_DEBUG, "TLSv1: Send Certificate");
	rhdr = pos;
	pos += TLS_RECORD_HEADER_LEN;

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	hs_start = pos;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_CERTIFICATE;
	/* uint24 length (to be filled) */
	hs_length = pos;
	pos += 3;
	/* body - Certificate */
	/* uint24 length (to be filled) */
	cert_start = pos;
	pos += 3;
	cert = conn->cred->cert;
	while (cert) {
		if (pos + 3 + cert->cert_len > end) {
			FUNC6(MSG_DEBUG, "TLSv1: Not enough buffer space "
				   "for Certificate (cert_len=%lu left=%lu)",
				   (unsigned long) cert->cert_len,
				   (unsigned long) (end - pos));
			FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_INTERNAL_ERROR);
			return -1;
		}
		FUNC0(pos, cert->cert_len);
		pos += 3;
		FUNC1(pos, cert->cert_start, cert->cert_len);
		pos += cert->cert_len;

		if (FUNC8(cert))
			break;
		cert = FUNC7(conn->cred->trusted_certs,
						    &cert->issuer);
	}
	if (cert == conn->cred->cert || cert == NULL) {
		/*
		 * Server was not configured with all the needed certificates
		 * to form a full certificate chain. The client may fail to
		 * validate the chain unless it is configured with all the
		 * missing CA certificates.
		 */
		FUNC6(MSG_DEBUG, "TLSv1: Full server certificate chain "
			   "not configured - validation may fail");
	}
	FUNC0(cert_start, pos - cert_start - 3);

	FUNC0(hs_length, pos - hs_length - 3);

	if (FUNC4(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      rhdr, end - rhdr, hs_start, pos - hs_start,
			      &rlen) < 0) {
		FUNC6(MSG_DEBUG, "TLSv1: Failed to generate a record");
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	pos = rhdr + rlen;

	FUNC3(&conn->verify, hs_start, pos - hs_start);

	*msgpos = pos;

	return 0;
}