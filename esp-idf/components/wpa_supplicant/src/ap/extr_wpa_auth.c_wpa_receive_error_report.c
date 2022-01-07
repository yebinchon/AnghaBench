
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_state_machine {scalar_t__ pairwise; int addr; } ;
struct TYPE_2__ {scalar_t__ wpa_group; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;


 scalar_t__ WPA_CIPHER_TKIP ;
 scalar_t__ wpa_auth_mic_failure_report (struct wpa_authenticator*,int ) ;
 int wpa_request_new_ptk (struct wpa_state_machine*) ;

__attribute__((used)) static int wpa_receive_error_report(struct wpa_authenticator *wpa_auth,
                    struct wpa_state_machine *sm, int group)
{
    if (group && wpa_auth->conf.wpa_group != WPA_CIPHER_TKIP) {
    } else if (!group && sm->pairwise != WPA_CIPHER_TKIP) {
    } else {
        if (wpa_auth_mic_failure_report(wpa_auth, sm->addr) > 0)
            return 1;
    }





    wpa_request_new_ptk(sm);
    return 0;
}
