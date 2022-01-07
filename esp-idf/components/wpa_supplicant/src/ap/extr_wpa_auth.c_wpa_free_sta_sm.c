
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_state_machine {struct wpa_state_machine* wpa_ie; struct wpa_state_machine* last_rx_eapol_key; struct wpa_state_machine* assoc_resp_ftie; scalar_t__ GUpdateStationKeys; TYPE_1__* group; } ;
struct TYPE_2__ {int GKeyDoneStations; } ;


 scalar_t__ FALSE ;
 int MSG_DEBUG ;
 int os_free (struct wpa_state_machine*) ;
 int wpa_auth_del_sm (struct wpa_state_machine*) ;
 int wpa_printf (int ,char*,struct wpa_state_machine*) ;

__attribute__((used)) static void wpa_free_sta_sm(struct wpa_state_machine *sm)
{
    wpa_auth_del_sm(sm);
    if (sm->GUpdateStationKeys) {
        sm->group->GKeyDoneStations--;
        sm->GUpdateStationKeys = FALSE;
    }



    wpa_printf( MSG_DEBUG, "wpa_free_sta_sm: free eapol=%p\n", sm->last_rx_eapol_key);
    os_free(sm->last_rx_eapol_key);
    os_free(sm->wpa_ie);
    os_free(sm);
}
