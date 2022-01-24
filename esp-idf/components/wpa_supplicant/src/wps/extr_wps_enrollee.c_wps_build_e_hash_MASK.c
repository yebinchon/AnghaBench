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
struct wps_data {int /*<<< orphan*/  authkey; int /*<<< orphan*/ * psk2; int /*<<< orphan*/ * snonce; int /*<<< orphan*/ * dh_pubkey_r; int /*<<< orphan*/ * dh_pubkey_e; int /*<<< orphan*/ * psk1; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_E_HASH1 ; 
 int ATTR_E_HASH2 ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  WPS_AUTHKEY_LEN ; 
 size_t WPS_PSK_LEN ; 
 int WPS_SECRET_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC8(struct wps_data *wps, struct wpabuf *msg)
{
	u8 *hash;
	const u8 *addr[4];
	size_t len[4];

	if (FUNC1(wps->snonce, 2 * WPS_SECRET_NONCE_LEN) < 0)
		return -1;
	FUNC2(MSG_DEBUG, "WPS: E-S1", wps->snonce, WPS_SECRET_NONCE_LEN);
	FUNC2(MSG_DEBUG, "WPS: E-S2",
		    wps->snonce + WPS_SECRET_NONCE_LEN, WPS_SECRET_NONCE_LEN);

	if (wps->dh_pubkey_e == NULL || wps->dh_pubkey_r == NULL) {
		FUNC3(MSG_DEBUG,  "WPS: DH public keys not available for "
			   "E-Hash derivation");
		return -1;
	}

	FUNC3(MSG_DEBUG,  "WPS:  * E-Hash1");
	FUNC7(msg, ATTR_E_HASH1);
	FUNC7(msg, SHA256_MAC_LEN);
	hash = FUNC6(msg, SHA256_MAC_LEN);
	/* E-Hash1 = HMAC_AuthKey(E-S1 || PSK1 || PK_E || PK_R) */
	addr[0] = wps->snonce;
	len[0] = WPS_SECRET_NONCE_LEN;
	addr[1] = wps->psk1;
	len[1] = WPS_PSK_LEN;
	addr[2] = FUNC4(wps->dh_pubkey_e);
	len[2] = FUNC5(wps->dh_pubkey_e);
	addr[3] = FUNC4(wps->dh_pubkey_r);
	len[3] = FUNC5(wps->dh_pubkey_r);
	FUNC0(wps->authkey, WPS_AUTHKEY_LEN, 4, addr, len, hash);
	FUNC2(MSG_DEBUG, "WPS: E-Hash1", hash, SHA256_MAC_LEN);

	FUNC3(MSG_DEBUG,  "WPS:  * E-Hash2");
	FUNC7(msg, ATTR_E_HASH2);
	FUNC7(msg, SHA256_MAC_LEN);
	hash = FUNC6(msg, SHA256_MAC_LEN);
	/* E-Hash2 = HMAC_AuthKey(E-S2 || PSK2 || PK_E || PK_R) */
	addr[0] = wps->snonce + WPS_SECRET_NONCE_LEN;
	addr[1] = wps->psk2;
	FUNC0(wps->authkey, WPS_AUTHKEY_LEN, 4, addr, len, hash);
	FUNC2(MSG_DEBUG, "WPS: E-Hash2", hash, SHA256_MAC_LEN);

	return 0;
}