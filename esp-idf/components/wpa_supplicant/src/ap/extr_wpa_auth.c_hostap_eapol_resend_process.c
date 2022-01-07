
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_state_machine {scalar_t__ in_step_loop; int TimeoutEvt; scalar_t__ pending_1_of_4_timeout; } ;


 int ESP_OK ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TRUE ;
 struct wpa_state_machine* wpa_auth_get_sm (int ) ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_step (struct wpa_state_machine*) ;

int hostap_eapol_resend_process(void *timeout_ctx)
{
    u32 index = (u32)timeout_ctx;
    struct wpa_state_machine *sm = wpa_auth_get_sm(index);

    wpa_printf( MSG_DEBUG, "resend eapol1");

    if(sm) {
        sm->pending_1_of_4_timeout = 0;
        sm->TimeoutEvt = TRUE;
        sm->in_step_loop = 0;
        wpa_sm_step(sm);
    } else {
     wpa_printf( MSG_INFO, "Station left, stop send EAPOL frame");
    }

    return ESP_OK;
}
