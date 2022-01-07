
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int dummy; } ;


 int wpa_auth_sta_deinit (struct wpa_state_machine*) ;

bool wpa_ap_remove(void* sm)
{
    struct wpa_state_machine *wpa_sm;
    if (!sm) return 0;

    wpa_sm = (struct wpa_state_machine*)sm;
    wpa_auth_sta_deinit(wpa_sm);

    return 1;
}
