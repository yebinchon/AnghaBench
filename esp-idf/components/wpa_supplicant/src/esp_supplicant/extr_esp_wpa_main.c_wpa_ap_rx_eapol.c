
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_state_machine {int dummy; } ;
struct hostapd_data {int wpa_auth; } ;


 int wpa_receive (int ,struct wpa_state_machine*,int *,size_t) ;

bool wpa_ap_rx_eapol(void *hapd_data, void *sm_data, u8 *data, size_t data_len)
{
    struct hostapd_data *hapd = (struct hostapd_data *)hapd_data;
    struct wpa_state_machine *sm = (struct wpa_state_machine *)sm_data;

    if (!hapd || !sm) {
        return 0;
    }

    wpa_receive(hapd->wpa_auth, sm, data, data_len);

    return 1;
}
