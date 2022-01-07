
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct wpa_state_machine {int dummy; } ;
struct hostapd_data {TYPE_2__* wpa_auth; } ;
struct TYPE_5__ {scalar_t__ wpa; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;


 int MSG_DEBUG ;
 scalar_t__ esp_wifi_get_hostap_private_internal () ;
 int wpa_auth_sta_associated (TYPE_2__*,struct wpa_state_machine*) ;
 int wpa_auth_sta_deinit (struct wpa_state_machine*) ;
 struct wpa_state_machine* wpa_auth_sta_init (TYPE_2__*,int *) ;
 int wpa_printf (int ,char*,struct wpa_state_machine*) ;
 scalar_t__ wpa_validate_wpa_ie (TYPE_2__*,struct wpa_state_machine*,int *,int ) ;

bool wpa_ap_join(void** sm, uint8_t *bssid, uint8_t *wpa_ie, uint8_t wpa_ie_len)
{
    struct hostapd_data *hapd = (struct hostapd_data*)esp_wifi_get_hostap_private_internal();
    struct wpa_state_machine **wpa_sm;

    if (!sm || !bssid || !wpa_ie){
        return 0;
    }


    wpa_sm = (struct wpa_state_machine **)sm;

    if (hapd) {
        if (hapd->wpa_auth->conf.wpa) {
            if (*wpa_sm){
                wpa_auth_sta_deinit(*wpa_sm);
            }

            *wpa_sm = wpa_auth_sta_init(hapd->wpa_auth, bssid);
            wpa_printf( MSG_DEBUG, "init wpa sm=%p\n", *wpa_sm);

            if (*wpa_sm == ((void*)0)) {
                return 0;
            }

            if (wpa_validate_wpa_ie(hapd->wpa_auth, *wpa_sm, wpa_ie, wpa_ie_len)) {
                return 0;
            }
        }

        wpa_auth_sta_associated(hapd->wpa_auth, *wpa_sm);
    }

    return 1;
}
