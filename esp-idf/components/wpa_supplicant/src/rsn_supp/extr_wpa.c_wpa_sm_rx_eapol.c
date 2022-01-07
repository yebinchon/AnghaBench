
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wpa_sm {scalar_t__ pairwise_cipher; scalar_t__ group_cipher; scalar_t__ proto; int rx_replay_counter; scalar_t__ rx_replay_counter_set; } ;
struct wpa_eapol_key {int key_data_length; int replay_counter; int key_info; int type; } ;
struct ieee802_1x_hdr {int type; int version; int length; } ;


 int EAPOL_KEY_TYPE_RSN ;
 int EAPOL_KEY_TYPE_WPA ;
 int EAPOL_VERSION ;
 int IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ WPA_CIPHER_CCMP ;
 int WPA_GET_BE16 (int ) ;
 int WPA_KEY_INFO_ACK ;
 int WPA_KEY_INFO_ENCR_KEY_DATA ;
 int WPA_KEY_INFO_KEY_INDEX_MASK ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 int WPA_KEY_INFO_REQUEST ;
 int WPA_KEY_INFO_SMK_MESSAGE ;
 int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ;
 int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ;
 int WPA_KEY_INFO_TYPE_MASK ;
 scalar_t__ WPA_PROTO_RSN ;
 int WPA_REPLAY_COUNTER_LEN ;
 int be_to_host16 (int ) ;
 struct wpa_sm gWpaSm ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int wpa_eapol_key_dump (int ,struct wpa_eapol_key*) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_supplicant_decrypt_key_data (struct wpa_sm*,struct wpa_eapol_key*,int) ;
 int wpa_supplicant_process_1_of_2 (struct wpa_sm*,int *,struct wpa_eapol_key*,int,int) ;
 int wpa_supplicant_process_1_of_4 (struct wpa_sm*,int *,struct wpa_eapol_key*,int) ;
 int wpa_supplicant_process_3_of_4 (struct wpa_sm*,struct wpa_eapol_key*,int) ;
 scalar_t__ wpa_supplicant_verify_eapol_key_mic (struct wpa_sm*,struct wpa_eapol_key*,int,int *,int) ;

int wpa_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len)
{
    struct wpa_sm *sm = &gWpaSm;
    u32 plen, data_len, extra_len;
    struct ieee802_1x_hdr *hdr;
    struct wpa_eapol_key *key;
    u16 key_info, ver;
    u8 *tmp;
    int ret = -1;

    if (len < sizeof(*hdr) + sizeof(*key)) {






        return 0;
    }

       tmp = buf;

    hdr = (struct ieee802_1x_hdr *) tmp;
    key = (struct wpa_eapol_key *) (hdr + 1);
    plen = be_to_host16(hdr->length);
    data_len = plen + sizeof(*hdr);






    if (hdr->version < EAPOL_VERSION) {

    }
    if (hdr->type != IEEE802_1X_TYPE_EAPOL_KEY) {




        ret = 0;
        goto out;
    }
    if (plen > len - sizeof(*hdr) || plen < sizeof(*key)) {





        ret = 0;
        goto out;
    }

    if (key->type != EAPOL_KEY_TYPE_WPA && key->type != EAPOL_KEY_TYPE_RSN)
    {




        ret = 0;
        goto out;
    }

    wpa_eapol_key_dump(MSG_MSGDUMP, key);

    wpa_hexdump(MSG_MSGDUMP, "WPA: RX EAPOL-Key", tmp, len);

    if (data_len < len) {




    }
    key_info = WPA_GET_BE16(key->key_info);
    ver = key_info & WPA_KEY_INFO_TYPE_MASK;
    if (ver != WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 &&
        ver != WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {




        goto out;
    }

    if (sm->pairwise_cipher == WPA_CIPHER_CCMP &&
        ver != WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {




        if (sm->group_cipher != WPA_CIPHER_CCMP &&
            !(key_info & WPA_KEY_INFO_KEY_TYPE)) {
        } else
            goto out;
    }


    if ( sm->rx_replay_counter_set &&
     memcmp(key->replay_counter, sm->rx_replay_counter,
              WPA_REPLAY_COUNTER_LEN) <= 0) {




        goto out;
    }

    if (!(key_info & (WPA_KEY_INFO_ACK | WPA_KEY_INFO_SMK_MESSAGE))) {



        goto out;
    }

    if (key_info & WPA_KEY_INFO_REQUEST) {



        goto out;
    }

    if ((key_info & WPA_KEY_INFO_MIC) &&
        wpa_supplicant_verify_eapol_key_mic(sm, key, ver, tmp, data_len))
        goto out;

    extra_len = data_len - sizeof(*hdr) - sizeof(*key);

    if (WPA_GET_BE16(key->key_data_length) > extra_len) {






        goto out;
    }
    extra_len = WPA_GET_BE16(key->key_data_length);

    if (sm->proto == WPA_PROTO_RSN &&
        (key_info & WPA_KEY_INFO_ENCR_KEY_DATA)) {
        if (wpa_supplicant_decrypt_key_data(sm, key, ver))
            goto out;
        extra_len = WPA_GET_BE16(key->key_data_length);
    }

    if (key_info & WPA_KEY_INFO_KEY_TYPE) {
        if (key_info & WPA_KEY_INFO_KEY_INDEX_MASK) {




            goto out;
        }

        if (key_info & WPA_KEY_INFO_MIC) {

            wpa_supplicant_process_3_of_4(sm, key, ver);
        } else {

            wpa_supplicant_process_1_of_4(sm, src_addr, key,
                              ver);
        }
    } else {
        if (key_info & WPA_KEY_INFO_MIC) {

            wpa_supplicant_process_1_of_2(sm, src_addr, key,
                              extra_len, ver);
        } else {




        }
    }

    ret = 1;

out:

    return ret;
}
