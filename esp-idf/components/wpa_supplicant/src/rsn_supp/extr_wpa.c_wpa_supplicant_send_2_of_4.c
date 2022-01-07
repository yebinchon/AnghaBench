
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct wpa_eapol_key {int key_mic; struct wpa_eapol_key const* key_nonce; struct wpa_eapol_key const* key_data_length; struct wpa_eapol_key const* replay_counter; struct wpa_eapol_key const* key_length; struct wpa_eapol_key const* key_info; int type; } const wpa_eapol_key ;
typedef struct wpa_eapol_key u8 ;
struct wpa_sm {scalar_t__ proto; } ;
struct wpa_ptk {int kck; } ;


 int EAPOL_KEY_TYPE_RSN ;
 int EAPOL_KEY_TYPE_WPA ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 size_t WPA_NONCE_LEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_PUT_BE16 (struct wpa_eapol_key const*,size_t) ;
 size_t WPA_REPLAY_COUNTER_LEN ;
 int memcpy (struct wpa_eapol_key const*,struct wpa_eapol_key const*,size_t) ;
 int wpa_eapol_key_send (struct wpa_sm*,int ,int,unsigned char const*,int ,struct wpa_eapol_key*,size_t,int ) ;
 int wpa_hexdump (int ,char*,struct wpa_eapol_key const*,size_t) ;
 int wpa_printf (int ,char*) ;
 struct wpa_eapol_key* wpa_sm_alloc_eapol (struct wpa_sm*,int ,int *,int,size_t*,void*) ;
 int wpa_sm_free_eapol (struct wpa_eapol_key*) ;

int wpa_supplicant_send_2_of_4(struct wpa_sm *sm, const unsigned char *dst,
                   const struct wpa_eapol_key *key,
                   int ver, const u8 *nonce,
                   const u8 *wpa_ie, size_t wpa_ie_len,
                   struct wpa_ptk *ptk)
{
    size_t rlen;
    struct wpa_eapol_key *reply;
    u8 *rbuf;

    if (wpa_ie == ((void*)0)) {




        return -1;
    }

    wpa_hexdump(MSG_MSGDUMP, "WPA: WPA IE for msg 2/4\n", wpa_ie, wpa_ie_len);

    rbuf = wpa_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_KEY,
                  ((void*)0), sizeof(*reply) + wpa_ie_len,
                  &rlen, (void *) &reply);
    if (rbuf == ((void*)0)) {
        return -1;
    }

    reply->type = sm->proto == WPA_PROTO_RSN ?
        EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
    WPA_PUT_BE16(reply->key_info,
             ver | WPA_KEY_INFO_KEY_TYPE | WPA_KEY_INFO_MIC);
    if (sm->proto == WPA_PROTO_RSN)
        WPA_PUT_BE16(reply->key_length, 0);
    else
        memcpy(reply->key_length, key->key_length, 2);

    memcpy(reply->replay_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);

    WPA_PUT_BE16(reply->key_data_length, wpa_ie_len);
    memcpy(reply + 1, wpa_ie, wpa_ie_len);

    memcpy(reply->key_nonce, nonce, WPA_NONCE_LEN);

    wpa_printf(MSG_DEBUG, "WPA Send EAPOL-Key 2/4\n");

    wpa_eapol_key_send(sm, ptk->kck, ver, dst, ETH_P_EAPOL,
               rbuf, rlen, reply->key_mic);
    wpa_sm_free_eapol(rbuf);

    return 0;
}
