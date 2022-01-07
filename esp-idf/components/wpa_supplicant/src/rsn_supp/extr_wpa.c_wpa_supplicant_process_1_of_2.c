
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_gtk_data {int dummy; } ;
struct wpa_sm {scalar_t__ proto; int key_info; struct wpa_gtk_data gd; } ;
struct wpa_eapol_key {int key_data_length; int key_info; } ;


 int MSG_DEBUG ;
 int WLAN_REASON_UNSPECIFIED ;
 int WPA_GET_BE16 (int ) ;
 int WPA_GROUP_HANDSHAKE ;
 scalar_t__ WPA_PROTO_RSN ;
 int memset (struct wpa_gtk_data*,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_deauthenticate (struct wpa_sm*,int ) ;
 int wpa_sm_set_seq (struct wpa_sm*,struct wpa_eapol_key*,int ) ;
 int wpa_sm_set_state (int ) ;
 int wpa_supplicant_process_1_of_2_rsn (struct wpa_sm*,int const*,int ,int ,struct wpa_gtk_data*) ;
 int wpa_supplicant_process_1_of_2_wpa (struct wpa_sm*,struct wpa_eapol_key*,int ,int ,int,int ,struct wpa_gtk_data*) ;
 scalar_t__ wpa_supplicant_send_2_of_2 (struct wpa_sm*,struct wpa_eapol_key*,int ,int ) ;

void wpa_supplicant_process_1_of_2(struct wpa_sm *sm,
                      const unsigned char *src_addr,
                      struct wpa_eapol_key *key,
                      int extra_len, u16 ver)
{
    u16 key_info, keydatalen;
    int ret;
    struct wpa_gtk_data *gd=&(sm->gd);

    memset(gd, 0, sizeof(struct wpa_gtk_data));

    wpa_printf(MSG_DEBUG, "WPA 1/2 Group Key Handshake\n");

    key_info = WPA_GET_BE16(key->key_info);
    keydatalen = WPA_GET_BE16(key->key_data_length);

    if (sm->proto == WPA_PROTO_RSN) {
        ret = wpa_supplicant_process_1_of_2_rsn(sm,
                            (const u8 *) (key + 1),
                            keydatalen, key_info,
                            gd);
    } else {
        ret = wpa_supplicant_process_1_of_2_wpa(sm, key, keydatalen,
                            key_info, extra_len,
                            ver, gd);
    }

    wpa_sm_set_state(WPA_GROUP_HANDSHAKE);

    if (ret)
        goto failed;


    wpa_sm_set_seq(sm, key, 0);
    sm->key_info=key_info;

    if (wpa_supplicant_send_2_of_2(sm, key, ver, key_info))
        goto failed;

    return;

failed:
    wpa_sm_deauthenticate(sm, WLAN_REASON_UNSPECIFIED);
}
