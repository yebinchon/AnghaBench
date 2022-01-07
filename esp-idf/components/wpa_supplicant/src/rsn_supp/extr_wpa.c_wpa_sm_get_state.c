
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int wpa_state; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;



__attribute__((used)) static inline enum wpa_states wpa_sm_get_state(struct wpa_sm *sm)
{
    return sm->wpa_state;;
}
