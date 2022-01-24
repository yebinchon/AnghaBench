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
typedef  scalar_t__ u8 ;
struct x509_certificate {struct x509_certificate* next; } ;
struct tlsv1_server {int /*<<< orphan*/  state; TYPE_1__* cred; int /*<<< orphan*/  client_rsa_key; scalar_t__ verify_peer; } ;
struct TYPE_2__ {int /*<<< orphan*/  trusted_certs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_KEY_EXCHANGE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TLS_ALERT_BAD_CERTIFICATE ; 
 int TLS_ALERT_CERTIFICATE_EXPIRED ; 
 int TLS_ALERT_CERTIFICATE_REVOKED ; 
 int TLS_ALERT_CERTIFICATE_UNKNOWN ; 
 int TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int TLS_ALERT_UNEXPECTED_MESSAGE ; 
 int TLS_ALERT_UNKNOWN_CA ; 
 int TLS_ALERT_UNSUPPORTED_CERTIFICATE ; 
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE ; 
 size_t FUNC0 (scalar_t__ const*) ; 
#define  X509_VALIDATE_BAD_CERTIFICATE 133 
#define  X509_VALIDATE_CERTIFICATE_EXPIRED 132 
#define  X509_VALIDATE_CERTIFICATE_REVOKED 131 
#define  X509_VALIDATE_CERTIFICATE_UNKNOWN 130 
#define  X509_VALIDATE_UNKNOWN_CA 129 
#define  X509_VALIDATE_UNSUPPORTED_CERTIFICATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__ const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct tlsv1_server*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct x509_certificate*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct x509_certificate*,int*,int /*<<< orphan*/ ) ; 
 struct x509_certificate* FUNC8 (scalar_t__ const*,size_t) ; 

__attribute__((used)) static int FUNC9(struct tlsv1_server *conn, u8 ct,
				   const u8 *in_data, size_t *in_len)
{
	const u8 *pos, *end;
	size_t left, len, list_len, cert_len, idx;
	u8 type;
	struct x509_certificate *chain = NULL, *last = NULL, *cert;
	int reason;

	if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
		FUNC5(MSG_DEBUG, "TLSv1: Expected Handshake; "
			   "received content type 0x%x", ct);
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	if (left < 4) {
		FUNC5(MSG_DEBUG, "TLSv1: Too short Certificate message "
			   "(len=%lu)", (unsigned long) left);
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	type = *pos++;
	len = FUNC0(pos);
	pos += 3;
	left -= 4;

	if (len > left) {
		FUNC5(MSG_DEBUG, "TLSv1: Unexpected Certificate message "
			   "length (len=%lu != left=%lu)",
			   (unsigned long) len, (unsigned long) left);
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	if (type == TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE) {
		if (conn->verify_peer) {
			FUNC5(MSG_DEBUG, "TLSv1: Client did not include "
				   "Certificate");
			FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_UNEXPECTED_MESSAGE);
			return -1;
		}

		return FUNC3(conn, ct, in_data,
						       in_len);
	}
	if (type != TLS_HANDSHAKE_TYPE_CERTIFICATE) {
		FUNC5(MSG_DEBUG, "TLSv1: Received unexpected handshake "
			   "message %d (expected Certificate/"
			   "ClientKeyExchange)", type);
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC5(MSG_DEBUG, "TLSv1: Received Certificate (certificate_list len %lu)",
		   (unsigned long) len);

	/*
	 * opaque ASN.1Cert<2^24-1>;
	 *
	 * struct {
	 *     ASN.1Cert certificate_list<1..2^24-1>;
	 * } Certificate;
	 */

	end = pos + len;

	if (end - pos < 3) {
		FUNC5(MSG_DEBUG, "TLSv1: Too short Certificate "
			   "(left=%lu)", (unsigned long) left);
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	list_len = FUNC0(pos);
	pos += 3;

	if ((size_t) (end - pos) != list_len) {
		FUNC5(MSG_DEBUG, "TLSv1: Unexpected certificate_list "
			   "length (len=%lu left=%lu)",
			   (unsigned long) list_len,
			   (unsigned long) (end - pos));
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	idx = 0;
	while (pos < end) {
		if (end - pos < 3) {
			FUNC5(MSG_DEBUG, "TLSv1: Failed to parse "
				   "certificate_list");
			FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_DECODE_ERROR);
			FUNC6(chain);
			return -1;
		}

		cert_len = FUNC0(pos);
		pos += 3;

		if ((size_t) (end - pos) < cert_len) {
			FUNC5(MSG_DEBUG, "TLSv1: Unexpected certificate "
				   "length (len=%lu left=%lu)",
				   (unsigned long) cert_len,
				   (unsigned long) (end - pos));
			FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_DECODE_ERROR);
			FUNC6(chain);
			return -1;
		}

		FUNC5(MSG_DEBUG, "TLSv1: Certificate %lu (len %lu)",
			   (unsigned long) idx, (unsigned long) cert_len);

		if (idx == 0) {
			FUNC1(conn->client_rsa_key);
			if (FUNC2(pos, cert_len,
					   &conn->client_rsa_key)) {
				FUNC5(MSG_DEBUG, "TLSv1: Failed to parse "
					   "the certificate");
				FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
						   TLS_ALERT_BAD_CERTIFICATE);
				FUNC6(chain);
				return -1;
			}
		}

		cert = FUNC8(pos, cert_len);
		if (cert == NULL) {
			FUNC5(MSG_DEBUG, "TLSv1: Failed to parse "
				   "the certificate");
			FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_BAD_CERTIFICATE);
			FUNC6(chain);
			return -1;
		}

		if (last == NULL)
			chain = cert;
		else
			last->next = cert;
		last = cert;

		idx++;
		pos += cert_len;
	}

	if (FUNC7(conn->cred->trusted_certs, chain,
					    &reason, 0) < 0) {
		int tls_reason;
		FUNC5(MSG_DEBUG, "TLSv1: Server certificate chain "
			   "validation failed (reason=%d)", reason);
		switch (reason) {
		case X509_VALIDATE_BAD_CERTIFICATE:
			tls_reason = TLS_ALERT_BAD_CERTIFICATE;
			break;
		case X509_VALIDATE_UNSUPPORTED_CERTIFICATE:
			tls_reason = TLS_ALERT_UNSUPPORTED_CERTIFICATE;
			break;
		case X509_VALIDATE_CERTIFICATE_REVOKED:
			tls_reason = TLS_ALERT_CERTIFICATE_REVOKED;
			break;
		case X509_VALIDATE_CERTIFICATE_EXPIRED:
			tls_reason = TLS_ALERT_CERTIFICATE_EXPIRED;
			break;
		case X509_VALIDATE_CERTIFICATE_UNKNOWN:
			tls_reason = TLS_ALERT_CERTIFICATE_UNKNOWN;
			break;
		case X509_VALIDATE_UNKNOWN_CA:
			tls_reason = TLS_ALERT_UNKNOWN_CA;
			break;
		default:
			tls_reason = TLS_ALERT_BAD_CERTIFICATE;
			break;
		}
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL, tls_reason);
		FUNC6(chain);
		return -1;
	}

	FUNC6(chain);

	*in_len = end - in_data;

	conn->state = CLIENT_KEY_EXCHANGE;

	return 0;
}