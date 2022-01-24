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
struct wps_data {int /*<<< orphan*/  wps; int /*<<< orphan*/  config_error; int /*<<< orphan*/  peer_hash2; int /*<<< orphan*/  authkey; int /*<<< orphan*/  dh_pubkey_r; int /*<<< orphan*/  dh_pubkey_e; int /*<<< orphan*/ * psk2; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  WPS_AUTHKEY_LEN ; 
 int /*<<< orphan*/  WPS_CFG_DEV_PASSWORD_AUTH_FAILURE ; 
 int /*<<< orphan*/  WPS_HASH_LEN ; 
 size_t WPS_PSK_LEN ; 
 size_t WPS_SECRET_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct wps_data *wps, const u8 *r_snonce2)
{
	u8 hash[SHA256_MAC_LEN];
	const u8 *addr[4];
	size_t len[4];

	if (r_snonce2 == NULL) {
		FUNC3(MSG_DEBUG,  "WPS: No R-SNonce2 received");
		return -1;
	}

	FUNC2(MSG_DEBUG, "WPS: R-SNonce2", r_snonce2,
			WPS_SECRET_NONCE_LEN);

	/* R-Hash2 = HMAC_AuthKey(R-S2 || PSK2 || PK_E || PK_R) */
	addr[0] = r_snonce2;
	len[0] = WPS_SECRET_NONCE_LEN;
	addr[1] = wps->psk2;
	len[1] = WPS_PSK_LEN;
	addr[2] = FUNC4(wps->dh_pubkey_e);
	len[2] = FUNC5(wps->dh_pubkey_e);
	addr[3] = FUNC4(wps->dh_pubkey_r);
	len[3] = FUNC5(wps->dh_pubkey_r);

	FUNC0(wps->authkey, WPS_AUTHKEY_LEN, 4, addr, len, hash);

	if (FUNC1(wps->peer_hash2, hash, WPS_HASH_LEN) != 0) {
		FUNC3(MSG_DEBUG,  "WPS: R-Hash2 derived from R-S2 does "
			   "not match with the pre-committed value");
		wps->config_error = WPS_CFG_DEV_PASSWORD_AUTH_FAILURE;
		FUNC6(wps->wps, 1, 2);
		return -1;
	}

	FUNC3(MSG_DEBUG,  "WPS: Registrar proved knowledge of the second "
		   "half of the device password");

	return 0;
}