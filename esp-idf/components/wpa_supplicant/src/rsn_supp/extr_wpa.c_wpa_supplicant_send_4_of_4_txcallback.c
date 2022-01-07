
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ gtk_len; } ;
struct wpa_sm {int key_info; int key_install; int bssid; TYPE_1__ gd; } ;


 int MLME_SETPROTECTION_KEY_TYPE_PAIRWISE ;
 int MLME_SETPROTECTION_PROTECT_TYPE_RX ;
 int MSG_DEBUG ;
 int WLAN_REASON_UNSPECIFIED ;
 int WPA_GROUP_HANDSHAKE ;
 int WPA_KEY_INFO_INSTALL ;
 int WPA_KEY_INFO_SECURE ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_mlme_setprotection (struct wpa_sm*,int ,int ,int ) ;
 int wpa_sm_set_state (int ) ;
 scalar_t__ wpa_supplicant_install_gtk (struct wpa_sm*,TYPE_1__*) ;
 scalar_t__ wpa_supplicant_install_ptk (struct wpa_sm*) ;
 int wpa_supplicant_key_neg_complete (struct wpa_sm*,int ,int) ;

int wpa_supplicant_send_4_of_4_txcallback(struct wpa_sm *sm)
{
       u16 key_info=sm->key_info;

    if (sm->key_install && key_info & WPA_KEY_INFO_INSTALL) {
        if (wpa_supplicant_install_ptk(sm))
            goto failed;
    }
    else if (sm->key_install == 0) {
        wpa_printf(MSG_DEBUG, "PTK has been installed, it may be an attack, ignor it.");
    }

    wpa_sm_set_state(WPA_GROUP_HANDSHAKE);

    if((sm->gd).gtk_len) {
     if (sm->key_install) {
          if (wpa_supplicant_install_gtk(sm, &(sm->gd)))
            goto failed;
     }
     else {
         wpa_printf(MSG_DEBUG, "GTK has been installed, it may be an attack, ignor it.");
     }
        wpa_supplicant_key_neg_complete(sm, sm->bssid,
                    key_info & WPA_KEY_INFO_SECURE);
    }


    if (key_info & WPA_KEY_INFO_SECURE) {
        wpa_sm_mlme_setprotection(
            sm, sm->bssid, MLME_SETPROTECTION_PROTECT_TYPE_RX,
            MLME_SETPROTECTION_KEY_TYPE_PAIRWISE);
    }

    sm->key_install = 0;

    return 0;

failed:
       return WLAN_REASON_UNSPECIFIED;
}
