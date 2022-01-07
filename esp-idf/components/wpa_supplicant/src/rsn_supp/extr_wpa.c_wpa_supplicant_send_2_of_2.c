
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int kck; } ;
struct wpa_sm {scalar_t__ proto; int bssid; TYPE_1__ ptk; int txcb_flags; } ;
struct wpa_eapol_key {int key_mic; int key_data_length; int replay_counter; int key_length; int key_info; int type; } ;


 int EAPOL_KEY_TYPE_RSN ;
 int EAPOL_KEY_TYPE_WPA ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 int WPA_GROUP_HANDSHAKE_BIT ;
 int WPA_KEY_INFO_KEY_INDEX_MASK ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_SECURE ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_PUT_BE16 (int ,int) ;
 int WPA_REPLAY_COUNTER_LEN ;
 int memcpy (int ,int ,int) ;
 int wpa_eapol_key_send (struct wpa_sm*,int ,int,int ,int ,int *,size_t,int ) ;
 int wpa_printf (int ,char*,...) ;
 int * wpa_sm_alloc_eapol (struct wpa_sm*,int ,int *,int,size_t*,void*) ;
 int wpa_sm_free_eapol (int *) ;

int wpa_supplicant_send_2_of_2(struct wpa_sm *sm,
                      const struct wpa_eapol_key *key,
                      int ver, u16 key_info)
{
    size_t rlen;
    struct wpa_eapol_key *reply;
    u8 *rbuf;

    rbuf = wpa_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_KEY, ((void*)0),
                  sizeof(*reply), &rlen, (void *) &reply);
    if (rbuf == ((void*)0))
        return -1;

    sm->txcb_flags |= WPA_GROUP_HANDSHAKE_BIT;
    wpa_printf(MSG_DEBUG, "2/2 txcb_flags=%d\n", sm->txcb_flags);

    reply->type = sm->proto == WPA_PROTO_RSN ?
        EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
    key_info &= WPA_KEY_INFO_KEY_INDEX_MASK;
    key_info |= ver | WPA_KEY_INFO_MIC | WPA_KEY_INFO_SECURE;
    WPA_PUT_BE16(reply->key_info, key_info);
    if (sm->proto == WPA_PROTO_RSN)
        WPA_PUT_BE16(reply->key_length, 0);
    else
        memcpy(reply->key_length, key->key_length, 2);
    memcpy(reply->replay_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);

    WPA_PUT_BE16(reply->key_data_length, 0);

    wpa_printf(MSG_DEBUG, "WPA Send 2/2 Group key\n");

    wpa_eapol_key_send(sm, sm->ptk.kck, ver, sm->bssid, ETH_P_EAPOL,
               rbuf, rlen, reply->key_mic);
    wpa_sm_free_eapol(rbuf);

    return 0;
}
