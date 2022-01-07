
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_group {scalar_t__ changed; int GTKReKey; struct wpa_group* next; } ;
struct TYPE_2__ {scalar_t__ wpa_group_rekey; } ;
struct wpa_authenticator {TYPE_1__ conf; struct wpa_group* group; } ;


 scalar_t__ FALSE ;
 int TRUE ;
 int eloop_register_timeout (scalar_t__,int ,void (*) (void*,void*),struct wpa_authenticator*,int *) ;
 int wpa_group_sm_step (struct wpa_authenticator*,struct wpa_group*) ;

__attribute__((used)) static void wpa_rekey_gtk(void *eloop_ctx, void *timeout_ctx)
{
    struct wpa_authenticator *wpa_auth = eloop_ctx;
    struct wpa_group *group;

    for (group = wpa_auth->group; group; group = group->next) {
        group->GTKReKey = TRUE;
        do {
            group->changed = FALSE;
            wpa_group_sm_step(wpa_auth, group);
        } while (group->changed);
    }

    if (wpa_auth->conf.wpa_group_rekey) {
        eloop_register_timeout(wpa_auth->conf.wpa_group_rekey,
                       0, wpa_rekey_gtk, wpa_auth, ((void*)0));
    }
}
