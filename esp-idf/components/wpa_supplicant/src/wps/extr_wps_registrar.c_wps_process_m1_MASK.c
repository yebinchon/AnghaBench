#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wps_parse_attr {int /*<<< orphan*/  public_key_len; int /*<<< orphan*/ * public_key; int /*<<< orphan*/  os_version; int /*<<< orphan*/  config_error; int /*<<< orphan*/  dev_password_id; int /*<<< orphan*/  assoc_state; int /*<<< orphan*/  rf_bands; int /*<<< orphan*/  wps_state; int /*<<< orphan*/  config_methods; int /*<<< orphan*/  conn_type_flags; int /*<<< orphan*/  encr_type_flags; int /*<<< orphan*/  auth_type_flags; int /*<<< orphan*/  enrollee_nonce; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  uuid_e; } ;
struct wps_nfc_pw_token {int /*<<< orphan*/  pubkey_hash; int /*<<< orphan*/  list; } ;
struct TYPE_9__ {scalar_t__ model_name; scalar_t__ manufacturer; } ;
struct wps_data {scalar_t__ state; int dev_pw_id; int pbc; int use_psk_key; TYPE_3__ peer_dev; int /*<<< orphan*/  uuid_e; int /*<<< orphan*/  mac_addr_e; TYPE_6__* wps; int /*<<< orphan*/  config_error; struct wps_nfc_pw_token* nfc_pw_token; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_10__ {TYPE_1__* registrar; } ;
struct TYPE_8__ {int force_pbc_overlap; int /*<<< orphan*/  nfc_pw_tokens; int /*<<< orphan*/  pbc; } ;

/* Variables and functions */
 int DEV_PW_DEFAULT ; 
 int DEV_PW_MACHINE_SPECIFIED ; 
 int DEV_PW_PUSHBUTTON ; 
 int DEV_PW_REGISTRAR_SPECIFIED ; 
 int DEV_PW_USER_SPECIFIED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ RECV_M1 ; 
 scalar_t__ SEND_M2 ; 
 void* SEND_M2D ; 
 int /*<<< orphan*/  WPS_CFG_MULTIPLE_PBC_DETECTED ; 
 int WPS_CONTINUE ; 
 int /*<<< orphan*/  WPS_EI_NO_ERROR ; 
 int WPS_FAILURE ; 
 int WPS_HASH_LEN ; 
 int /*<<< orphan*/  WPS_M1 ; 
 int /*<<< orphan*/  WPS_OOB_PUBKEY_HASH_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wps_nfc_pw_token* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_3__*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC16 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct wps_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct wps_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct wps_data*) ; 
 scalar_t__ FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct wps_data*) ; 

__attribute__((used)) static enum wps_process_res FUNC28(struct wps_data *wps,
					   struct wps_parse_attr *attr)
{
	FUNC5(MSG_DEBUG,  "WPS: Received M1");

	if (wps->state != RECV_M1) {
		FUNC5(MSG_DEBUG,  "WPS: Unexpected state (%d) for "
			   "receiving M1", wps->state);
		return WPS_FAILURE;
	}

	if (FUNC22(wps, attr->uuid_e) ||
	    FUNC18(wps, attr->mac_addr) ||
	    FUNC17(wps, attr->enrollee_nonce) ||
	    FUNC20(wps, attr->public_key, attr->public_key_len) ||
	    FUNC10(wps, attr->auth_type_flags) ||
	    FUNC16(wps, attr->encr_type_flags) ||
	    FUNC13(wps, attr->conn_type_flags) ||
	    FUNC12(wps, attr->config_methods) ||
	    FUNC23(wps, attr->wps_state) ||
	    FUNC15(&wps->peer_dev, attr) ||
	    FUNC21(&wps->peer_dev, attr->rf_bands) ||
	    FUNC9(wps, attr->assoc_state) ||
	    FUNC14(wps, attr->dev_password_id) ||
	    FUNC11(wps, attr->config_error) ||
	    FUNC19(&wps->peer_dev, attr->os_version))
		return WPS_FAILURE;

	if (wps->dev_pw_id < 0x10 &&
	    wps->dev_pw_id != DEV_PW_DEFAULT &&
	    wps->dev_pw_id != DEV_PW_USER_SPECIFIED &&
	    wps->dev_pw_id != DEV_PW_MACHINE_SPECIFIED &&
	    wps->dev_pw_id != DEV_PW_REGISTRAR_SPECIFIED &&
	    (wps->dev_pw_id != DEV_PW_PUSHBUTTON ||
	     !wps->wps->registrar->pbc)) {
		FUNC5(MSG_DEBUG,  "WPS: Unsupported Device Password ID %d",
			   wps->dev_pw_id);
		wps->state = SEND_M2D;
		return WPS_CONTINUE;
	}

#ifdef CONFIG_WPS_NFC
	if (wps->dev_pw_id >= 0x10) {
		struct wps_nfc_pw_token *token;
		const u8 *addr[1];
		u8 hash[WPS_HASH_LEN];

		token = wps_get_nfc_pw_token(
			&wps->wps->registrar->nfc_pw_tokens, wps->dev_pw_id);
		if (token) {
			wpa_printf(MSG_DEBUG,  "WPS: Found matching NFC "
				   "Password Token");
			dl_list_del(&token->list);
			wps->nfc_pw_token = token;

			addr[0] = attr->public_key;
			sha256_vector(1, addr, &attr->public_key_len, hash);
			if (os_memcmp(hash, wps->nfc_pw_token->pubkey_hash,
				      WPS_OOB_PUBKEY_HASH_LEN) != 0) {
				wpa_printf(MSG_ERROR,  "WPS: Public Key hash "
					   "mismatch");
				return WPS_FAILURE;
			}
		}
	}
#endif /* CONFIG_WPS_NFC */

	if (wps->dev_pw_id == DEV_PW_PUSHBUTTON) {
		if ((wps->wps->registrar->force_pbc_overlap ||
		     FUNC26(wps->wps->registrar,
					       wps->mac_addr_e, wps->uuid_e) ||
		     !FUNC25(wps)) &&
		    !FUNC27(wps)) {
			FUNC5(MSG_DEBUG,  "WPS: PBC overlap - deny PBC "
				   "negotiation");
			wps->state = SEND_M2D;
			wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
			FUNC8(wps->wps);
			FUNC6(wps->wps, WPS_M1,
				       WPS_CFG_MULTIPLE_PBC_DETECTED,
				       WPS_EI_NO_ERROR);
			wps->wps->registrar->force_pbc_overlap = 1;
			return WPS_CONTINUE;
		}
		FUNC24(wps->wps->registrar,
					      wps->mac_addr_e, wps->uuid_e);
		wps->pbc = 1;
	}

#ifdef WPS_WORKAROUNDS
	/*
	 * It looks like Mac OS X 10.6.3 and 10.6.4 do not like Network Key in
	 * passphrase format. To avoid interop issues, force PSK format to be
	 * used.
	 */
	if (!wps->use_psk_key &&
	    wps->peer_dev.manufacturer &&
	    os_strncmp(wps->peer_dev.manufacturer, "Apple ", 6) == 0 &&
	    wps->peer_dev.model_name &&
	    os_strcmp(wps->peer_dev.model_name, "AirPort") == 0) {
		wpa_printf(MSG_DEBUG,  "WPS: Workaround - Force Network Key in "
			   "PSK format");
		wps->use_psk_key = 1;
	}
#endif /* WPS_WORKAROUNDS */

	wps->state = SEND_M2;
	return WPS_CONTINUE;
}