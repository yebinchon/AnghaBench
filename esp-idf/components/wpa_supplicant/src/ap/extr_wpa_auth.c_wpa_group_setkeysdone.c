
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_group {int wpa_group_state; int changed; int vlan_id; } ;
struct wpa_authenticator {int dummy; } ;


 int MSG_DEBUG ;
 int TRUE ;
 int WPA_GROUP_SETKEYSDONE ;
 scalar_t__ wpa_group_config_group_keys (struct wpa_authenticator*,struct wpa_group*) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int wpa_group_setkeysdone(struct wpa_authenticator *wpa_auth,
                 struct wpa_group *group)
{
    wpa_printf( MSG_DEBUG, "WPA: group state machine entering state "
           "SETKEYSDONE (VLAN-ID %d)\n", group->vlan_id);
    group->changed = TRUE;
    group->wpa_group_state = WPA_GROUP_SETKEYSDONE;

    if (wpa_group_config_group_keys(wpa_auth, group) < 0)
        return -1;

    return 0;
}
