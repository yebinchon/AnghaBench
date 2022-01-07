
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int wpa_state; int cm_timer; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;


 scalar_t__ WPA_MIC_FAILURE ;
 scalar_t__ WPA_SM_STATE (struct wpa_sm*) ;
 int ets_timer_disarm (int *) ;
 struct wpa_sm gWpaSm ;

void wpa_sm_set_state(enum wpa_states state)
{
       struct wpa_sm *sm = &gWpaSm;
    if(WPA_MIC_FAILURE==WPA_SM_STATE(sm))
        ets_timer_disarm(&(sm->cm_timer));
    sm->wpa_state= state;
}
