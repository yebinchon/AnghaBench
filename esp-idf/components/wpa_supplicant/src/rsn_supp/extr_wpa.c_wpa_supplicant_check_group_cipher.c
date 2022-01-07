
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;


 int MSG_DEBUG ;
 int WPA_ALG_CCMP ;
 int WPA_ALG_TKIP ;
 int WPA_ALG_WEP104 ;
 int WPA_ALG_WEP40 ;




 int wpa_cipher_txt (int) ;
 int wpa_printf (int ,char*,int,...) ;

int wpa_supplicant_check_group_cipher(int group_cipher,
                         int keylen, int maxkeylen,
                         int *key_rsc_len,
                         enum wpa_alg *alg)
{
    int ret = 0;

    switch (group_cipher) {
    case 131:
        if (keylen != 16 || maxkeylen < 16) {
            ret = -1;
            break;
        }
        *key_rsc_len = 6;
        *alg = WPA_ALG_CCMP;
        break;
    case 130:
        if (keylen != 32 || maxkeylen < 32) {
            ret = -1;
            break;
        }
        *key_rsc_len = 6;
        *alg = WPA_ALG_TKIP;
        break;
    case 129:
        if (keylen != 13 || maxkeylen < 13) {
            ret = -1;
            break;
        }
        *key_rsc_len = 0;
        *alg = WPA_ALG_WEP104;
        break;
    case 128:
        if (keylen != 5 || maxkeylen < 5) {
            ret = -1;
            break;
        }
        *key_rsc_len = 0;
        *alg = WPA_ALG_WEP40;
        break;
    default:




        return -1;
    }

    if (ret < 0 ) {





    }

    return ret;
}
