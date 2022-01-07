
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_sm {int group_cipher; } ;
struct wpa_gtk_data {int gtk_len; int keyidx; int gtk; int tx; int alg; int key_rsc_len; } ;
struct wpa_eapol_ie_parse {int const* gtk; int gtk_len; } ;


 int BIT (int) ;
 int MSG_DEBUG ;
 int WPA_KEY_INFO_ENCR_KEY_DATA ;
 scalar_t__ ieee80211w_set_keys (struct wpa_sm*,struct wpa_eapol_ie_parse*) ;
 int memcpy (int ,int*,int) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_supplicant_check_group_cipher (int ,int,int,int *,int *) ;
 int wpa_supplicant_gtk_tx_bit_workaround (struct wpa_sm*,int) ;
 int wpa_supplicant_parse_ies (int const*,size_t,struct wpa_eapol_ie_parse*) ;

int wpa_supplicant_process_1_of_2_rsn(struct wpa_sm *sm,
                         const u8 *keydata,
                         size_t keydatalen,
                         u16 key_info,
                         struct wpa_gtk_data *gd)
{
    int maxkeylen;
    struct wpa_eapol_ie_parse ie;

    wpa_hexdump(MSG_DEBUG, "RSN: msg 1/2 key data", keydata, keydatalen);
    wpa_supplicant_parse_ies(keydata, keydatalen, &ie);
    if (ie.gtk && !(key_info & WPA_KEY_INFO_ENCR_KEY_DATA)) {



        return -1;
    }
    if (ie.gtk == ((void*)0)) {



        return -1;
    }
    maxkeylen = gd->gtk_len = ie.gtk_len - 2;

    if (wpa_supplicant_check_group_cipher(sm->group_cipher,
                          gd->gtk_len, maxkeylen,
                          &gd->key_rsc_len, &gd->alg))
        return -1;

    wpa_hexdump(MSG_DEBUG, "RSN: received GTK in group key handshake",
            ie.gtk, ie.gtk_len);
    gd->keyidx = ie.gtk[0] & 0x3;
    gd->tx = wpa_supplicant_gtk_tx_bit_workaround(sm,
                              !!(ie.gtk[0] & BIT(2)));
    if (ie.gtk_len - 2 > sizeof(gd->gtk)) {




        return -1;
    }
    memcpy(gd->gtk, ie.gtk + 2, ie.gtk_len - 2);

    if (ieee80211w_set_keys(sm, &ie) < 0)
    {



    }
    return 0;
}
