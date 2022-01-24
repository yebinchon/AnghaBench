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
struct wpa_sm {int pmk_len; scalar_t__ key_mgmt; scalar_t__ proto; int /*<<< orphan*/  bssid; struct rsn_pmksa_cache_entry* cur_pmksa; int /*<<< orphan*/  pmksa; int /*<<< orphan*/  network_ctx; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  pmk; scalar_t__ xxkey_len; } ;
struct rsn_pmksa_cache_entry {int /*<<< orphan*/  pmkid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_START ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  PMKID_LEN ; 
 int PMK_LEN ; 
 scalar_t__ WPA_KEY_MGMT_OSEN ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rsn_pmksa_cache_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct rsn_pmksa_cache_entry* FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_sm*) ; 

__attribute__((used)) static int FUNC13(struct wpa_sm *sm,
        const unsigned char *src_addr,
        const u8 *pmkid)
{
    int abort_cached = 0;

    if (pmkid && !sm->cur_pmksa) {
        /* When using drivers that generate RSN IE, wpa_supplicant may
         * not have enough time to get the association information
         * event before receiving this 1/4 message, so try to find a
         * matching PMKSA cache entry here. */
        sm->cur_pmksa = FUNC3(sm->pmksa, src_addr, pmkid,
                NULL);
        if (sm->cur_pmksa) {
            FUNC9(MSG_DEBUG,
                    "RSN: found matching PMKID from PMKSA cache");
        } else {
            FUNC9( MSG_DEBUG,
                    "RSN: no matching PMKID found");
            abort_cached = 1;
        }
    }

    if (pmkid && sm->cur_pmksa &&
            FUNC1(pmkid, sm->cur_pmksa->pmkid, PMKID_LEN) == 0) {

        FUNC4(MSG_DEBUG, "RSN: matched PMKID", pmkid, PMKID_LEN);
        FUNC12(sm);
        FUNC5(MSG_DEBUG, "RSN: PMK from PMKSA cache",
                sm->pmk, sm->pmk_len);
        //eapol_sm_notify_cached(sm->eapol);
#ifdef CONFIG_IEEE80211R
        sm->xxkey_len = 0;
#endif /* CONFIG_IEEE80211R */
    } else if (FUNC8(sm->key_mgmt)) {
        int res = 0, pmk_len;
        pmk_len = PMK_LEN;
        /* For ESP_SUPPLICANT this is already set using wpa_set_pmk*/
        //res = eapol_sm_get_key(sm->eapol, sm->pmk, PMK_LEN);

        if(!sm->pmk_len) {
            res = -1; 
        }

        if (res == 0) {
            struct rsn_pmksa_cache_entry *sa = NULL;
            FUNC5(MSG_DEBUG, "WPA: PMK from EAPOL state "
                    "machines", sm->pmk, pmk_len);
            sm->pmk_len = pmk_len;
            //wpa_supplicant_key_mgmt_set_pmk(sm);
            if (sm->proto == WPA_PROTO_RSN &&
                    !FUNC7(sm->key_mgmt) &&
                    !FUNC6(sm->key_mgmt)) {
                sa = FUNC2(sm->pmksa,
                        sm->pmk, pmk_len,
                        NULL, 0,
						     src_addr, sm->own_addr,
						     sm->network_ctx,
						     sm->key_mgmt);
			}
			if (!sm->cur_pmksa && pmkid &&
			    FUNC3(sm->pmksa, src_addr, pmkid, NULL))
			{
				FUNC9( MSG_DEBUG,
					"RSN: the new PMK matches with the "
					"PMKID");
				abort_cached = 0;
			} else if (sa && !sm->cur_pmksa && pmkid) {
				/*
				 * It looks like the authentication server
				 * derived mismatching MSK. This should not
				 * really happen, but bugs happen.. There is not
				 * much we can do here without knowing what
				 * exactly caused the server to misbehave.
				 */
				FUNC9( MSG_INFO,
					"RSN: PMKID mismatch - authentication server may have derived different MSK?!");
				return -1;
			}

			if (!sm->cur_pmksa)
				sm->cur_pmksa = sa;
		} else {
			FUNC9( MSG_WARNING,
				"WPA: Failed to get master session key from "
				"EAPOL state machines - key handshake "
				"aborted");
			if (sm->cur_pmksa) {
				FUNC9( MSG_DEBUG,
					"RSN: Cancelled PMKSA caching "
					"attempt");
				sm->cur_pmksa = NULL;
				abort_cached = 1;
			} else if (!abort_cached) {
				return -1;
			}
		}
	}

	if (abort_cached && FUNC8(sm->key_mgmt) &&
	    !FUNC7(sm->key_mgmt) &&
	    !FUNC6(sm->key_mgmt) && sm->key_mgmt != WPA_KEY_MGMT_OSEN)
	{
		/* Send EAPOL-Start to trigger full EAP authentication. */
		u8 *buf;
		size_t buflen;

		FUNC9( MSG_DEBUG,
			"RSN: no PMKSA entry found - trigger "
			"full EAP authentication");
		buf = FUNC10(sm, IEEE802_1X_TYPE_EAPOL_START,
					 NULL, 0, &buflen, NULL);
		if (buf) {
			FUNC11(sm, sm->bssid, ETH_P_EAPOL,
					  buf, buflen);
			FUNC0(buf);
			return -2;
		}

		return -1;
	}

	return 0;
}