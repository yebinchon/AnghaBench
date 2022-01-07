
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {void* reject_4way_hs_for_entropy; void* first_sta_seen; } ;
struct wpa_authenticator {int dummy; } ;


 void* FALSE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 void* TRUE ;
 int random_pool_ready () ;
 int wpa_group_config_group_keys (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_group_init_gmk_and_counter (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_gtk_update (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_group_ensure_init(struct wpa_authenticator *wpa_auth,
                  struct wpa_group *group)
{
    if (group->first_sta_seen)
        return;







    wpa_printf( MSG_DEBUG, "WPA: Re-initialize GMK/Counter on first "
           "station\n");
    if (random_pool_ready() != 1) {
        wpa_printf( MSG_INFO, "WPA: Not enough entropy in random pool "
               "to proceed - reject first 4-way handshake");
        group->reject_4way_hs_for_entropy = TRUE;
    } else {
        group->first_sta_seen = TRUE;
        group->reject_4way_hs_for_entropy = FALSE;
    }

    wpa_group_init_gmk_and_counter(wpa_auth, group);
    wpa_gtk_update(wpa_auth, group);
    wpa_group_config_group_keys(wpa_auth, group);
}
