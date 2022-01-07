
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int kck; } ;
struct wpa_sm {scalar_t__ pairwise_cipher; scalar_t__ proto; TYPE_1__ ptk; scalar_t__ ptk_set; int request_counter; int key_mgmt; } ;
struct wpa_eapol_key {int * key_mic; int key_data_length; int replay_counter; int key_length; int key_info; int type; } ;


 int EAPOL_KEY_TYPE_RSN ;
 int EAPOL_KEY_TYPE_WPA ;
 int ETH_ALEN ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 scalar_t__ WPA_CIPHER_CCMP ;
 int WPA_KEY_INFO_ERROR ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_REQUEST ;
 int WPA_KEY_INFO_SECURE ;
 int WPA_KEY_INFO_TYPE_AES_128_CMAC ;
 int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ;
 int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_PUT_BE16 (int ,int) ;
 int WPA_REPLAY_COUNTER_LEN ;
 int inc_byte_array (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int wpa_eapol_key_send (struct wpa_sm*,int ,int,int *,int ,int *,size_t,int *) ;
 scalar_t__ wpa_key_mgmt_ft (int ) ;
 scalar_t__ wpa_key_mgmt_sha256 (int ) ;
 int wpa_printf (int ,char*,...) ;
 int * wpa_sm_alloc_eapol (struct wpa_sm*,int ,int *,int,size_t*,void*) ;
 int wpa_sm_free_eapol (int *) ;
 scalar_t__ wpa_sm_get_bssid (struct wpa_sm*,int *) ;

void wpa_sm_key_request(struct wpa_sm *sm, int error, int pairwise)
{
    size_t rlen;
    struct wpa_eapol_key *reply;
    int key_info, ver;
    u8 bssid[ETH_ALEN], *rbuf;

    if (wpa_key_mgmt_ft(sm->key_mgmt) || wpa_key_mgmt_sha256(sm->key_mgmt))
        ver = WPA_KEY_INFO_TYPE_AES_128_CMAC;
    else if (sm->pairwise_cipher == WPA_CIPHER_CCMP)
        ver = WPA_KEY_INFO_TYPE_HMAC_SHA1_AES;
    else
        ver = WPA_KEY_INFO_TYPE_HMAC_MD5_RC4;

    if (wpa_sm_get_bssid(sm, bssid) < 0) {




        return;
    }

    rbuf = wpa_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_KEY, ((void*)0),
                  sizeof(*reply), &rlen, (void *) &reply);
    if (rbuf == ((void*)0))
        return;

    reply->type = sm->proto == WPA_PROTO_RSN ?
        EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
    key_info = WPA_KEY_INFO_REQUEST | ver;
    if (sm->ptk_set)
        key_info |= WPA_KEY_INFO_MIC;
    if (error)
        key_info |= WPA_KEY_INFO_ERROR|WPA_KEY_INFO_SECURE;
    if (pairwise)
        key_info |= WPA_KEY_INFO_KEY_TYPE;
    WPA_PUT_BE16(reply->key_info, key_info);
    WPA_PUT_BE16(reply->key_length, 0);
    memcpy(reply->replay_counter, sm->request_counter,
          WPA_REPLAY_COUNTER_LEN);
    inc_byte_array(sm->request_counter, WPA_REPLAY_COUNTER_LEN);

    WPA_PUT_BE16(reply->key_data_length, 0);






    wpa_eapol_key_send(sm, sm->ptk.kck, ver, bssid, ETH_P_EAPOL,
               rbuf, rlen, key_info & WPA_KEY_INFO_MIC ?
               reply->key_mic : ((void*)0));
    wpa_sm_free_eapol(rbuf);
}
