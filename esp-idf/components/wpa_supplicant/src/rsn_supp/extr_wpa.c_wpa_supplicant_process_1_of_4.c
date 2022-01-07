
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_ptk {int dummy; } ;
struct wpa_sm {scalar_t__ proto; int tptk_set; int key_install; int anonce; int assoc_wpa_ie_len; int assoc_wpa_ie; int const* snonce; int bssid; scalar_t__ ptk_set; struct wpa_ptk tptk; scalar_t__ renew_snonce; } ;
struct wpa_eapol_key {int key_nonce; int key_data_length; } ;
struct wpa_eapol_ie_parse {int const* pmkid; } ;
typedef int ie ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 size_t PMKID_LEN ;
 int WLAN_REASON_UNSPECIFIED ;
 scalar_t__ WPA2_AUTH_ENT ;
 int WPA_FIRST_HALF_4WAY_HANDSHAKE ;
 size_t WPA_GET_BE16 (int ) ;
 size_t WPA_NONCE_LEN ;
 scalar_t__ WPA_PROTO_RSN ;
 scalar_t__ esp_wifi_sta_get_prof_authmode_internal () ;
 scalar_t__ esp_wifi_sta_prof_is_wpa2_internal () ;
 int memcpy (int ,int ,size_t) ;
 int memset (struct wpa_eapol_ie_parse*,int ,int) ;
 scalar_t__ os_get_random (int const*,size_t) ;
 int pmksa_cache_set_current (struct wpa_sm*,int *,int ,int ,int ) ;
 int wpa_derive_ptk (struct wpa_sm*,unsigned char const*,struct wpa_eapol_key const*,struct wpa_ptk*) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_deauthenticate (struct wpa_sm*,int ) ;
 int wpa_sm_set_state (int ) ;
 int wpa_supplicant_get_pmk (struct wpa_sm*,unsigned char const*,int const*) ;
 int wpa_supplicant_parse_ies (int const*,size_t,struct wpa_eapol_ie_parse*) ;
 scalar_t__ wpa_supplicant_send_2_of_4 (struct wpa_sm*,int ,struct wpa_eapol_key const*,int ,int const*,int ,int ,struct wpa_ptk*) ;

void wpa_supplicant_process_1_of_4(struct wpa_sm *sm,
                      const unsigned char *src_addr,
                      const struct wpa_eapol_key *key,
                      u16 ver)
{
    struct wpa_eapol_ie_parse ie;
    struct wpa_ptk *ptk;
    int res;

    wpa_sm_set_state(WPA_FIRST_HALF_4WAY_HANDSHAKE);

    wpa_printf(MSG_DEBUG, "WPA 1/4-Way Handshake\n");

    memset(&ie, 0, sizeof(ie));


    if (sm->proto == WPA_PROTO_RSN) {

        const u8 *_buf = (const u8 *) (key + 1);
        size_t len = WPA_GET_BE16(key->key_data_length);
        wpa_hexdump(MSG_MSGDUMP, "RSN: msg 1/4 key data", _buf, len);
        wpa_supplicant_parse_ies(_buf, len, &ie);
        if (ie.pmkid) {
            wpa_hexdump(MSG_DEBUG, "RSN: PMKID from "
                    "Authenticator", ie.pmkid, PMKID_LEN);
        }
    }

    res = wpa_supplicant_get_pmk(sm, src_addr, ie.pmkid);

    if (res == -2) {




        return;
    }
    if (res)
        goto failed;

    if (esp_wifi_sta_prof_is_wpa2_internal()
            && esp_wifi_sta_get_prof_authmode_internal() == WPA2_AUTH_ENT) {
        pmksa_cache_set_current(sm, ((void*)0), sm->bssid, 0, 0);
    }

    if (sm->renew_snonce) {
        if (os_get_random(sm->snonce, WPA_NONCE_LEN)) {



            goto failed;
        }

        sm->renew_snonce = 0;
        wpa_hexdump(MSG_DEBUG, "WPA: Renewed SNonce",
                sm->snonce, WPA_NONCE_LEN);
    }



    ptk = &sm->tptk;
    wpa_derive_ptk(sm, src_addr, key, ptk);

    sm->tptk_set = 1;
    sm->ptk_set = 0;
    sm->key_install = 1;

    if (wpa_supplicant_send_2_of_4(sm, sm->bssid, key, ver, sm->snonce,
                       sm->assoc_wpa_ie, sm->assoc_wpa_ie_len,
                       ptk))
        goto failed;

    memcpy(sm->anonce, key->key_nonce, WPA_NONCE_LEN);
    return;

failed:
    wpa_sm_deauthenticate(sm, WLAN_REASON_UNSPECIFIED);
}
