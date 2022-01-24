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
typedef  int u8 ;
struct wpa_eapol_ie_parse {int const* rsn_ie; int rsn_ie_len; int const* mdie; int mdie_len; int const* ftie; int ftie_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int const WLAN_EID_FAST_BSS_TRANSITION ; 
 int const WLAN_EID_MOBILITY_DOMAIN ; 
 int const WLAN_EID_RSN ; 
 int const WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_eapol_ie_parse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int FUNC3 (int const*,int const*,struct wpa_eapol_ie_parse*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const,int const,int) ; 

int FUNC5(const u8 *buf, size_t len, struct wpa_eapol_ie_parse *ie)
{
	const u8 *pos, *end;
	int ret = 0;

	FUNC0(ie, 0, sizeof(*ie));
	for (pos = buf, end = pos + len; pos + 1 < end; pos += 2 + pos[1]) {
		if (pos[0] == 0xdd &&
		    ((pos == buf + len - 1) || pos[1] == 0)) {
			/* Ignore padding */
			break;
		}
		if (pos + 2 + pos[1] > end) {
			FUNC4( MSG_DEBUG, "WPA: EAPOL-Key Key Data "
				   "underflow (ie=%d len=%d pos=%d)",
				   pos[0], pos[1], (int) (pos - buf));
			FUNC2(MSG_DEBUG, "WPA: Key Data",
					buf, len);
			ret = -1;
			break;
		}
		if (*pos == WLAN_EID_RSN) {
			ie->rsn_ie = pos;
			ie->rsn_ie_len = pos[1] + 2;
#ifdef CONFIG_IEEE80211R
		} else if (*pos == WLAN_EID_MOBILITY_DOMAIN) {
			ie->mdie = pos;
			ie->mdie_len = pos[1] + 2;
		} else if (*pos == WLAN_EID_FAST_BSS_TRANSITION) {
			ie->ftie = pos;
			ie->ftie_len = pos[1] + 2;
#endif /* CONFIG_IEEE80211R */
		} else if (*pos == WLAN_EID_VENDOR_SPECIFIC) {
			ret = FUNC3(pos, end, ie);
			if (ret < 0)
				break;
			if (ret > 0) {
				ret = 0;
				break;
			}
		} else {
			FUNC1(MSG_DEBUG, "WPA: Unrecognized EAPOL-Key "
				    "Key Data IE", pos, 2 + pos[1]);
		}
	}

	return ret;
}