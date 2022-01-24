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
struct tlsv1_client {int /*<<< orphan*/ * server_rsa_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int TLS_PRE_MASTER_SECRET_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tlsv1_client*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct tlsv1_client *conn, u8 **pos, u8 *end)
{
	u8 pre_master_secret[TLS_PRE_MASTER_SECRET_LEN];
	size_t clen;
	int res;

	if (FUNC5(pre_master_secret) < 0 ||
	    FUNC4(conn, pre_master_secret,
			    TLS_PRE_MASTER_SECRET_LEN)) {
		FUNC7(MSG_DEBUG, "TLSv1: Failed to derive keys");
		FUNC3(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	/* EncryptedPreMasterSecret */
	if (conn->server_rsa_key == NULL) {
		FUNC7(MSG_DEBUG, "TLSv1: No server RSA key to "
			   "use for encrypting pre-master secret");
		FUNC3(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	/* RSA encrypted value is encoded with PKCS #1 v1.5 block type 2. */
	*pos += 2;
	clen = end - *pos;
	res = FUNC1(
		conn->server_rsa_key,
		pre_master_secret, TLS_PRE_MASTER_SECRET_LEN,
		*pos, &clen);
	FUNC2(pre_master_secret, 0, TLS_PRE_MASTER_SECRET_LEN);
	if (res < 0) {
		FUNC7(MSG_DEBUG, "TLSv1: RSA encryption failed");
		FUNC3(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	FUNC0(*pos - 2, clen);
	FUNC6(MSG_MSGDUMP, "TLSv1: Encrypted pre_master_secret",
		    *pos, clen);
	*pos += clen;

	return 0;
}