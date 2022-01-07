
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {scalar_t__ proto; scalar_t__ rsn_enabled; int * ap_rsn_ie; int ap_rsn_ie_len; int key_mgmt; int * ap_wpa_ie; int ap_wpa_ie_len; } ;
struct wpa_eapol_ie_parse {int rsn_ie_len; int * rsn_ie; int wpa_ie_len; int * wpa_ie; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_PROTO_WPA ;
 scalar_t__ memcmp (int *,int *,int ) ;
 scalar_t__ wpa_compare_rsn_ie (int ,int *,int ,int *,int ) ;
 int wpa_key_mgmt_ft (int ) ;
 int wpa_printf (int ,char*) ;
 int wpa_report_ie_mismatch (struct wpa_sm*,...) ;
 scalar_t__ wpa_sm_get_beacon_ie (struct wpa_sm*) ;

int wpa_supplicant_validate_ie(struct wpa_sm *sm,
                      const unsigned char *src_addr,
                      struct wpa_eapol_ie_parse *ie)
{
    if (sm->ap_wpa_ie == ((void*)0) && sm->ap_rsn_ie == ((void*)0)) {




        if (wpa_sm_get_beacon_ie(sm) < 0) {




        } else {




        }
    }

    if (ie->wpa_ie == ((void*)0) && ie->rsn_ie == ((void*)0) &&
        (sm->ap_wpa_ie || sm->ap_rsn_ie)) {






        wpa_report_ie_mismatch(sm,
                       src_addr, ie->wpa_ie, ie->wpa_ie_len,
                       ie->rsn_ie, ie->rsn_ie_len);

        return -1;
    }

    if ((ie->wpa_ie && sm->ap_wpa_ie &&
         (ie->wpa_ie_len != sm->ap_wpa_ie_len ||
         memcmp(ie->wpa_ie, sm->ap_wpa_ie, ie->wpa_ie_len) != 0)) ||
        (ie->rsn_ie && sm->ap_rsn_ie &&
         wpa_compare_rsn_ie(wpa_key_mgmt_ft(sm->key_mgmt),
                sm->ap_rsn_ie, sm->ap_rsn_ie_len,
                ie->rsn_ie, ie->rsn_ie_len))) {






        wpa_report_ie_mismatch(sm,
                       src_addr, ie->wpa_ie, ie->wpa_ie_len,
                       ie->rsn_ie, ie->rsn_ie_len);

        return -1;
    }

    if (sm->proto == WPA_PROTO_WPA &&
        ie->rsn_ie && sm->ap_rsn_ie == ((void*)0) && sm->rsn_enabled) {
        wpa_report_ie_mismatch(sm,
                               src_addr, ie->wpa_ie, ie->wpa_ie_len,
                               ie->rsn_ie, ie->rsn_ie_len);

        return -1;
    }

    return 0;
}
