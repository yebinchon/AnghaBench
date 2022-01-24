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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u16 ;
struct tlsv1_server {scalar_t__ client_version; TYPE_1__* cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 size_t TLS_PRE_MASTER_SECRET_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  const* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tlsv1_server*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC9(
	struct tlsv1_server *conn, const u8 *pos, const u8 *end)
{
	u8 *out;
	size_t outlen, outbuflen;
	u16 encr_len;
	int res;
	int use_random = 0;

	if (end - pos < 2) {
		FUNC6(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	encr_len = FUNC0(pos);
	pos += 2;
	if (pos + encr_len > end) {
		FUNC8(MSG_DEBUG, "TLSv1: Invalid ClientKeyExchange "
			   "format: encr_len=%u left=%u",
			   encr_len, (unsigned int) (end - pos));
		FUNC6(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	outbuflen = outlen = end - pos;
	out = FUNC4(outlen >= TLS_PRE_MASTER_SECRET_LEN ?
			outlen : TLS_PRE_MASTER_SECRET_LEN);
	if (out == NULL) {
		FUNC6(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	/*
	 * struct {
	 *   ProtocolVersion client_version;
	 *   opaque random[46];
	 * } PreMasterSecret;
	 *
	 * struct {
	 *   public-key-encrypted PreMasterSecret pre_master_secret;
	 * } EncryptedPreMasterSecret;
	 */

	/*
	 * Note: To avoid Bleichenbacher attack, we do not report decryption or
	 * parsing errors from EncryptedPreMasterSecret processing to the
	 * client. Instead, a random pre-master secret is used to force the
	 * handshake to fail.
	 */

	if (FUNC1(conn->cred->key,
						 pos, encr_len,
						 out, &outlen) < 0) {
		FUNC8(MSG_DEBUG, "TLSv1: Failed to decrypt "
			   "PreMasterSecret (encr_len=%u outlen=%lu)",
			   encr_len, (unsigned long) outlen);
		use_random = 1;
	}

	if (!use_random && outlen != TLS_PRE_MASTER_SECRET_LEN) {
		FUNC8(MSG_DEBUG, "TLSv1: Unexpected PreMasterSecret "
			   "length %lu", (unsigned long) outlen);
		use_random = 1;
	}

	if (!use_random && FUNC0(out) != conn->client_version) {
		FUNC8(MSG_DEBUG, "TLSv1: Client version in "
			   "ClientKeyExchange does not match with version in "
			   "ClientHello");
		use_random = 1;
	}

	if (use_random) {
		FUNC8(MSG_DEBUG, "TLSv1: Using random premaster secret "
			   "to avoid revealing information about private key");
		outlen = TLS_PRE_MASTER_SECRET_LEN;
		if (FUNC3(out, outlen)) {
			FUNC8(MSG_DEBUG, "TLSv1: Failed to get random "
				   "data");
			FUNC6(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_INTERNAL_ERROR);
			FUNC2(out);
			return -1;
		}
	}

	res = FUNC7(conn, out, outlen);

	/* Clear the pre-master secret since it is not needed anymore */
	FUNC5(out, 0, outbuflen);
	FUNC2(out);

	if (res) {
		FUNC8(MSG_DEBUG, "TLSv1: Failed to derive keys");
		FUNC6(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	return 0;
}