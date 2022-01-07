
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_authenticator {int dummy; } ;



int wpa_auth_for_each_sta(struct wpa_authenticator *wpa_auth,
              int (*cb)(struct wpa_state_machine *sm, void *ctx),
              void *cb_ctx)
{
    return 0;
}
