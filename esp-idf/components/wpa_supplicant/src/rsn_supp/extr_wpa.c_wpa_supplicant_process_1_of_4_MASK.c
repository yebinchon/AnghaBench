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
typedef  int /*<<< orphan*/  u16 ;
struct wpa_ptk {int dummy; } ;
struct wpa_sm {scalar_t__ proto; int tptk_set; int key_install; int /*<<< orphan*/  anonce; int /*<<< orphan*/  assoc_wpa_ie_len; int /*<<< orphan*/  assoc_wpa_ie; int /*<<< orphan*/  const* snonce; int /*<<< orphan*/  bssid; scalar_t__ ptk_set; struct wpa_ptk tptk; scalar_t__ renew_snonce; } ;
struct wpa_eapol_key {int /*<<< orphan*/  key_nonce; int /*<<< orphan*/  key_data_length; } ;
struct wpa_eapol_ie_parse {int /*<<< orphan*/  const* pmkid; } ;
typedef  int /*<<< orphan*/  ie ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 size_t PMKID_LEN ; 
 int /*<<< orphan*/  WLAN_REASON_UNSPECIFIED ; 
 scalar_t__ WPA2_AUTH_ENT ; 
 int /*<<< orphan*/  WPA_FIRST_HALF_4WAY_HANDSHAKE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t WPA_NONCE_LEN ; 
 scalar_t__ WPA_PROTO_RSN ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_eapol_ie_parse*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_sm*,unsigned char const*,struct wpa_eapol_key const*,struct wpa_ptk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_sm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct wpa_sm*,unsigned char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,size_t,struct wpa_eapol_ie_parse*) ; 
 scalar_t__ FUNC14 (struct wpa_sm*,int /*<<< orphan*/ ,struct wpa_eapol_key const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_ptk*) ; 

void   FUNC15(struct wpa_sm *sm,
                      const unsigned char *src_addr,
                      const struct wpa_eapol_key *key,
                      u16 ver)
{
    struct wpa_eapol_ie_parse ie;
    struct wpa_ptk *ptk;
    int res;

    FUNC11(WPA_FIRST_HALF_4WAY_HANDSHAKE);

    FUNC9(MSG_DEBUG, "WPA 1/4-Way Handshake\n");

    FUNC4(&ie, 0, sizeof(ie));

#ifndef CONFIG_NO_WPA2
    if (sm->proto == WPA_PROTO_RSN) {
        /* RSN: msg 1/4 should contain PMKID for the selected PMK */
        const u8 *_buf = (const u8 *) (key + 1);
        size_t len = FUNC0(key->key_data_length);    
        FUNC8(MSG_MSGDUMP, "RSN: msg 1/4 key data", _buf, len);
        FUNC13(_buf, len, &ie);
        if (ie.pmkid) {
            FUNC8(MSG_DEBUG, "RSN: PMKID from "
                    "Authenticator", ie.pmkid, PMKID_LEN);
        }
    }
#endif /* CONFIG_NO_WPA2 */
    res = FUNC12(sm, src_addr, ie.pmkid);
       
    if (res == -2) {
          #ifdef DEBUG_PRINT    
         wpa_printf(MSG_DEBUG, "RSN: Do not reply to msg 1/4 - "
               "requesting full EAP authentication");
          #endif     
        return;
    }
    if (res)
        goto failed;

    if (FUNC2() 
            && FUNC1() == WPA2_AUTH_ENT) {
        FUNC6(sm, NULL, sm->bssid, 0, 0);
    }

    if (sm->renew_snonce) {
        if (FUNC5(sm->snonce, WPA_NONCE_LEN)) {
         #ifdef DEBUG_PRINT            
            wpa_printf(MSG_DEBUG, "WPA: Failed to get random data for SNonce");
         #endif     
            goto failed;
        }
         
        sm->renew_snonce = 0;
        FUNC8(MSG_DEBUG, "WPA: Renewed SNonce",
                sm->snonce, WPA_NONCE_LEN);
    }

    /* Calculate PTK which will be stored as a temporary PTK until it has
     * been verified when processing message 3/4. */
    ptk = &sm->tptk;
    FUNC7(sm, src_addr, key, ptk);
    /* Supplicant: swap tx/rx Mic keys */
    sm->tptk_set = 1;
    sm->ptk_set = 0;
    sm->key_install = true;

    if (FUNC14(sm, sm->bssid, key, ver, sm->snonce,
                       sm->assoc_wpa_ie, sm->assoc_wpa_ie_len,
                       ptk))
        goto failed;

    FUNC3(sm->anonce, key->key_nonce, WPA_NONCE_LEN);
    return;

failed:
    FUNC10(sm, WLAN_REASON_UNSPECIFIED);
}