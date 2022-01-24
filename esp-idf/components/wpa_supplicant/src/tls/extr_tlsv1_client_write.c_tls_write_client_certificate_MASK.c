#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct x509_certificate {int cert_len; int /*<<< orphan*/  issuer; int /*<<< orphan*/  cert_start; } ;
struct tlsv1_client {int /*<<< orphan*/  verify; int /*<<< orphan*/  rl; TYPE_1__* cred; } ;
struct TYPE_2__ {struct x509_certificate* cert; int /*<<< orphan*/  trusted_certs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_CERTIFICATE ; 
 int /*<<< orphan*/  TLS_RECORD_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 struct x509_certificate* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct x509_certificate*) ; 

__attribute__((used)) static int FUNC8(struct tlsv1_client *conn,
					u8 **msgpos, u8 *end)
{
	u8 *pos, *rhdr, *hs_start, *hs_length, *cert_start;
	size_t rlen;
	struct x509_certificate *cert;

	pos = *msgpos;

	FUNC5(MSG_DEBUG, "TLSv1: Send Certificate");
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
	cert = conn->cred ? conn->cred->cert : NULL;
	while (cert) {
		if (pos + 3 + cert->cert_len > end) {
			FUNC5(MSG_DEBUG, "TLSv1: Not enough buffer space "
				   "for Certificate (cert_len=%lu left=%lu)",
				   (unsigned long) cert->cert_len,
				   (unsigned long) (end - pos));
			FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_INTERNAL_ERROR);
			return -1;
		}
		FUNC0(pos, cert->cert_len);
		pos += 3;
		FUNC1(pos, cert->cert_start, cert->cert_len);
		pos += cert->cert_len;

		if (FUNC7(cert))
			break;
		cert = FUNC6(conn->cred->trusted_certs,
						    &cert->issuer);
	}
	if (conn->cred == NULL || cert == conn->cred->cert || cert == NULL) {
		/*
		 * Client was not configured with all the needed certificates
		 * to form a full certificate chain. The server may fail to
		 * validate the chain unless it is configured with all the
		 * missing CA certificates.
		 */
		FUNC5(MSG_DEBUG, "TLSv1: Full client certificate chain "
			   "not configured - validation may fail");
	}
	FUNC0(cert_start, pos - cert_start - 3);

	FUNC0(hs_length, pos - hs_length - 3);

	if (FUNC4(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      rhdr, end - rhdr, hs_start, pos - hs_start,
			      &rlen) < 0) {
		FUNC5(MSG_DEBUG, "TLSv1: Failed to generate a record");
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	pos = rhdr + rlen;

	FUNC3(&conn->verify, hs_start, pos - hs_start);

	*msgpos = pos;

	return 0;
}