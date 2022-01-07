
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_state_machine {int group; struct wpa_authenticator* wpa_auth; int addr; } ;
struct wpa_authenticator {int group; } ;


 int ETH_ALEN ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_auth_add_sm (struct wpa_state_machine*) ;

struct wpa_state_machine *
wpa_auth_sta_init(struct wpa_authenticator *wpa_auth, const u8 *addr)
{
    struct wpa_state_machine *sm;

    sm = (struct wpa_state_machine *)os_zalloc(sizeof(struct wpa_state_machine));
    if (sm == ((void*)0))
        return ((void*)0);
    memcpy(sm->addr, addr, ETH_ALEN);

    sm->wpa_auth = wpa_auth;
    sm->group = wpa_auth->group;
    wpa_auth_add_sm(sm);

    return sm;
}
