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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct wpa_auth_config {int wpa_group; int rsn_pairwise; int wpa_key_mgmt; scalar_t__ ieee80211w; scalar_t__ wmm_enabled; scalar_t__ peerkey; scalar_t__ rsn_preauth; } ;
struct rsn_ie_hdr {int len; int /*<<< orphan*/ * version; int /*<<< orphan*/  elem_id; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ MGMT_FRAME_PROTECTION_REQUIRED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ NO_MGMT_FRAME_PROTECTION ; 
 int PMKID_LEN ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_802_1X_SHA256 ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_802_1X ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_PSK ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_FT_SAE ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_PSK_SHA256 ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_SAE ; 
 scalar_t__ RSN_AUTH_KEY_MGMT_UNSPEC_802_1X ; 
 scalar_t__ RSN_CIPHER_SUITE_AES_128_CMAC ; 
 int RSN_NUM_REPLAY_COUNTERS_16 ; 
 scalar_t__ FUNC1 (int,int,int,int) ; 
 int RSN_SELECTOR_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int RSN_VERSION ; 
 int /*<<< orphan*/  WLAN_EID_RSN ; 
 int WPA_CAPABILITY_MFPC ; 
 int WPA_CAPABILITY_MFPR ; 
 int WPA_CAPABILITY_PEERKEY_ENABLED ; 
 int WPA_CAPABILITY_PREAUTH ; 
 int WPA_KEY_MGMT_FT_IEEE8021X ; 
 int WPA_KEY_MGMT_FT_PSK ; 
 int WPA_KEY_MGMT_FT_SAE ; 
 int WPA_KEY_MGMT_IEEE8021X ; 
 int WPA_KEY_MGMT_IEEE8021X_SHA256 ; 
 int WPA_KEY_MGMT_PSK ; 
 int WPA_KEY_MGMT_PSK_SHA256 ; 
 int WPA_KEY_MGMT_SAE ; 
 int /*<<< orphan*/  WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ rsn_testing ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC9(struct wpa_auth_config *conf, u8 *buf, size_t len,
		     const u8 *pmkid)
{
	struct rsn_ie_hdr *hdr;
	int num_suites, res;
	u8 *pos, *count;
	u16 capab;
	u32 suite;

	hdr = (struct rsn_ie_hdr *) buf;
	hdr->elem_id = WLAN_EID_RSN;
	FUNC3(hdr->version, RSN_VERSION);
	pos = (u8 *) (hdr + 1);

	suite = FUNC7(WPA_PROTO_RSN, conf->wpa_group);
	if (suite == 0) {
		FUNC8( MSG_DEBUG, "Invalid group cipher (%d).",
			   conf->wpa_group);
		return -1;
	}
	FUNC2(pos, suite);
	pos += RSN_SELECTOR_LEN;

	num_suites = 0;
	count = pos;
	pos += 2;

#ifdef CONFIG_RSN_TESTING
	if (rsn_testing) {
		RSN_SELECTOR_PUT(pos, RSN_SELECTOR(0x12, 0x34, 0x56, 1));
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#endif /* CONFIG_RSN_TESTING */

	res = FUNC6(pos, conf->rsn_pairwise);
	num_suites += res;
	pos += res * RSN_SELECTOR_LEN;

#ifdef CONFIG_RSN_TESTING
	if (rsn_testing) {
		RSN_SELECTOR_PUT(pos, RSN_SELECTOR(0x12, 0x34, 0x56, 2));
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#endif /* CONFIG_RSN_TESTING */

	if (num_suites == 0) {
		FUNC8( MSG_DEBUG, "Invalid pairwise cipher (%d).",
			   conf->rsn_pairwise);
		return -1;
	}
	FUNC3(count, num_suites);

	num_suites = 0;
	count = pos;
	pos += 2;

#ifdef CONFIG_RSN_TESTING
	if (rsn_testing) {
		RSN_SELECTOR_PUT(pos, RSN_SELECTOR(0x12, 0x34, 0x56, 1));
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#endif /* CONFIG_RSN_TESTING */

	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X) {
		FUNC2(pos, RSN_AUTH_KEY_MGMT_UNSPEC_802_1X);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_PSK) {
		FUNC2(pos, RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#ifdef CONFIG_IEEE80211R
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_FT_IEEE8021X) {
		RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_FT_802_1X);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_FT_PSK) {
		RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_FT_PSK);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#endif /* CONFIG_IEEE80211R */
#ifdef CONFIG_IEEE80211W
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_IEEE8021X_SHA256) {
		RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_802_1X_SHA256);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_PSK_SHA256) {
		RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_PSK_SHA256);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#endif /* CONFIG_IEEE80211W */
#ifdef CONFIG_SAE
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_SAE) {
		RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_SAE);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
	if (conf->wpa_key_mgmt & WPA_KEY_MGMT_FT_SAE) {
		RSN_SELECTOR_PUT(pos, RSN_AUTH_KEY_MGMT_FT_SAE);
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#endif /* CONFIG_SAE */

#ifdef CONFIG_RSN_TESTING
	if (rsn_testing) {
		RSN_SELECTOR_PUT(pos, RSN_SELECTOR(0x12, 0x34, 0x56, 2));
		pos += RSN_SELECTOR_LEN;
		num_suites++;
	}
#endif /* CONFIG_RSN_TESTING */

	if (num_suites == 0) {
		FUNC8( MSG_DEBUG, "Invalid key management type (%d).",
			   conf->wpa_key_mgmt);
		return -1;
	}
	FUNC3(count, num_suites);

	/* RSN Capabilities */
	capab = 0;
	if (conf->rsn_preauth)
		capab |= WPA_CAPABILITY_PREAUTH;
	if (conf->peerkey)
		capab |= WPA_CAPABILITY_PEERKEY_ENABLED;
	if (conf->wmm_enabled) {
		/* 4 PTKSA replay counters when using WMM */
		capab |= (RSN_NUM_REPLAY_COUNTERS_16 << 2);
	}
#ifdef CONFIG_IEEE80211W
	if (conf->ieee80211w != NO_MGMT_FRAME_PROTECTION) {
		capab |= WPA_CAPABILITY_MFPC;
		if (conf->ieee80211w == MGMT_FRAME_PROTECTION_REQUIRED)
			capab |= WPA_CAPABILITY_MFPR;
	}
#endif /* CONFIG_IEEE80211W */
#ifdef CONFIG_RSN_TESTING
	if (rsn_testing)
		capab |= BIT(8) | BIT(14) | BIT(15);
#endif /* CONFIG_RSN_TESTING */
	FUNC3(pos, capab);
	pos += 2;

	if (pmkid) {
		if (pos + 2 + PMKID_LEN > buf + len)
			return -1;
		/* PMKID Count */
		FUNC3(pos, 1);
		pos += 2;
		FUNC4(pos, pmkid, PMKID_LEN);
		pos += PMKID_LEN;
	}

#ifdef CONFIG_IEEE80211W
	if (conf->ieee80211w != NO_MGMT_FRAME_PROTECTION) {
		if (pos + 2 + 4 > buf + len)
			return -1;
		if (pmkid == NULL) {
			/* PMKID Count */
			WPA_PUT_LE16(pos, 0);
			pos += 2;
		}

		/* Management Group Cipher Suite */
		RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_AES_128_CMAC);
		pos += RSN_SELECTOR_LEN;
	}
#endif /* CONFIG_IEEE80211W */

#ifdef CONFIG_RSN_TESTING
	if (rsn_testing) {
		/*
		 * Fill in any defined fields and add extra data to the end of
		 * the element.
		 */
		int pmkid_count_set = pmkid != NULL;
		if (conf->ieee80211w != NO_MGMT_FRAME_PROTECTION)
			pmkid_count_set = 1;
		/* PMKID Count */
		WPA_PUT_LE16(pos, 0);
		pos += 2;
		if (conf->ieee80211w == NO_MGMT_FRAME_PROTECTION) {
			/* Management Group Cipher Suite */
			RSN_SELECTOR_PUT(pos, RSN_CIPHER_SUITE_AES_128_CMAC);
			pos += RSN_SELECTOR_LEN;
		}

		memset(pos, 0x12, 17);
		pos += 17;
	}
#endif /* CONFIG_RSN_TESTING */

	hdr->len = (pos - buf) - 2;

	return pos - buf;
}