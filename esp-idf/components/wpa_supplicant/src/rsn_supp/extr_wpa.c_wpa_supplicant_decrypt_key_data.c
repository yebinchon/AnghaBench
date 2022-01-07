
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_eapol_key {int key_data_length; struct wpa_eapol_key* key_iv; } ;
typedef struct wpa_eapol_key u8 ;
typedef int u16 ;
struct TYPE_2__ {struct wpa_eapol_key* kek; } ;
struct wpa_sm {TYPE_1__ ptk; int ptk_set; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int ) ;
 int WPA_KEY_INFO_TYPE_AES_128_CMAC ;
 int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ;
 int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ;
 int WPA_PUT_BE16 (int ,int) ;
 scalar_t__ aes_unwrap (struct wpa_eapol_key*,int,struct wpa_eapol_key*,struct wpa_eapol_key*) ;
 int memcpy (struct wpa_eapol_key*,struct wpa_eapol_key*,int) ;
 scalar_t__ rc4_skip (struct wpa_eapol_key*,int,int,struct wpa_eapol_key*,int) ;
 int wpa_hexdump (int ,char*,struct wpa_eapol_key*,int) ;
 int wpa_printf (int ,char*,...) ;

int wpa_supplicant_decrypt_key_data(struct wpa_sm *sm,
                       struct wpa_eapol_key *key, u16 ver)
{
    u16 keydatalen = WPA_GET_BE16(key->key_data_length);

    wpa_hexdump(MSG_DEBUG, "RSN: encrypted key data",
            (u8 *) (key + 1), keydatalen);
    if (!sm->ptk_set) {




        return -1;
    }



    if (ver == WPA_KEY_INFO_TYPE_HMAC_MD5_RC4) {
        u8 ek[32];
        memcpy(ek, key->key_iv, 16);
        memcpy(ek + 16, sm->ptk.kek, 16);
        if (rc4_skip(ek, 32, 256, (u8 *) (key + 1), keydatalen)) {



            return -1;
        }
    } else if (ver == WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ||
           ver == WPA_KEY_INFO_TYPE_AES_128_CMAC) {
        u8 *buf;
        if (keydatalen % 8) {




            return -1;
        }
        keydatalen -= 8;


        buf = ((u8 *) (key+1))+ 8;
        if (aes_unwrap(sm->ptk.kek, keydatalen / 8,
                (u8 *) (key + 1), buf)) {




         return -1;
        }
        memcpy(key + 1, buf, keydatalen);
        WPA_PUT_BE16(key->key_data_length, keydatalen);
    } else {




        return -1;
    }
    wpa_hexdump(MSG_DEBUG, "WPA: decrypted EAPOL-Key key data",
            (u8 *) (key + 1), keydatalen);
    return 0;
}
