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
typedef  scalar_t__ wps_key_mode_t ;
struct wps_data {int dev_pw_id; struct wpabuf* dh_pubkey_e; struct wpabuf* dh_pubkey_r; scalar_t__ registrar; struct wpabuf* dh_privkey; int /*<<< orphan*/ * dh_ctx; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int ap_nfc_dev_pw_id; scalar_t__ ap_nfc_dh_pubkey; scalar_t__ ap_nfc_dh_privkey; scalar_t__ ap; scalar_t__ dh_pubkey; int /*<<< orphan*/ * dh_ctx; scalar_t__ dh_privkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_PUBLIC_KEY ; 
 int DEV_PW_DEFAULT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPS_CALC_KEY_NO_CALC ; 
 scalar_t__ WPS_CALC_KEY_PRE_CALC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf**,struct wpabuf**) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,struct wpabuf*) ; 
 struct wpabuf* FUNC11 (struct wpabuf*,int) ; 

int FUNC12(struct wps_data *wps, struct wpabuf *msg, wps_key_mode_t mode)
{
	struct wpabuf *pubkey;

	if (mode != WPS_CALC_KEY_NO_CALC) {

		FUNC5(MSG_DEBUG,  "WPS:  * Public Key");
		FUNC7(wps->dh_privkey);
		if (wps->dev_pw_id != DEV_PW_DEFAULT && wps->wps->dh_privkey) {
			FUNC5(MSG_DEBUG,  "WPS: Using pre-configured DH keys");
			wps->dh_privkey = FUNC6(wps->wps->dh_privkey);
			wps->dh_ctx = wps->wps->dh_ctx;
			wps->wps->dh_ctx = NULL;
			pubkey = FUNC6(wps->wps->dh_pubkey);
#ifdef CONFIG_WPS_NFC
		} else if (wps->dev_pw_id >= 0x10 && wps->wps->ap &&
				wps->dev_pw_id == wps->wps->ap_nfc_dev_pw_id) {
			wpa_printf(MSG_DEBUG,  "WPS: Using NFC password token DH keys");
			wps->dh_privkey = wpabuf_dup(wps->wps->ap_nfc_dh_privkey);
			pubkey = wpabuf_dup(wps->wps->ap_nfc_dh_pubkey);
			wps->dh_ctx = dh5_init_fixed(wps->dh_privkey, pubkey);
#endif /* CONFIG_WPS_NFC */
		} else {
			FUNC5(MSG_DEBUG,  "WPS: Generate new DH keys");
			wps->dh_privkey = NULL;
			FUNC0(wps->dh_ctx);

			FUNC5(MSG_DEBUG, "build public key start\n");

			wps->dh_ctx = FUNC1(&wps->dh_privkey, &pubkey);

			FUNC5(MSG_DEBUG, "build public key finish\n");

			pubkey = FUNC11(pubkey, 192);
		}
		if (wps->dh_ctx == NULL || wps->dh_privkey == NULL || pubkey == NULL) {
			FUNC5(MSG_DEBUG,  "WPS: Failed to initialize "
					"Diffie-Hellman handshake");
			FUNC7(pubkey);
			return -1;
		}
		FUNC4(MSG_DEBUG, "WPS: DH Private Key", wps->dh_privkey);
		FUNC3(MSG_DEBUG, "WPS: DH own Public Key", pubkey);

		if (wps->registrar) {
			FUNC7(wps->dh_pubkey_r);
			wps->dh_pubkey_r = pubkey;
		} else {
			FUNC7(wps->dh_pubkey_e);
			wps->dh_pubkey_e = pubkey;
		}

	}

	if (mode != WPS_CALC_KEY_PRE_CALC) {
		if (wps->registrar)
			pubkey = wps->dh_pubkey_r;
		else
			pubkey = wps->dh_pubkey_e;

		FUNC9(msg, ATTR_PUBLIC_KEY);
		FUNC9(msg, FUNC8(pubkey));
		FUNC10(msg, pubkey);
	}

	return 0;
}