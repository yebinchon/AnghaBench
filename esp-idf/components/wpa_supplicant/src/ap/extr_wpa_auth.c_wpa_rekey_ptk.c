
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int dummy; } ;


 int wpa_request_new_ptk (struct wpa_state_machine*) ;
 int wpa_sm_step (struct wpa_state_machine*) ;

__attribute__((used)) static void wpa_rekey_ptk(void *eloop_ctx, void *timeout_ctx)
{
    struct wpa_state_machine *sm = timeout_ctx;

    wpa_request_new_ptk(sm);
    wpa_sm_step(sm);
}
