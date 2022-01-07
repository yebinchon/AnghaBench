
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct wpa_group {int GN; int GN_igtk; int * IGTK; int vlan_id; int GTK_len; int * GTK; } ;
struct TYPE_2__ {scalar_t__ ieee80211w; int wpa_group; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;


 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int WPA_ALG_IGTK ;
 int WPA_IGTK_LEN ;
 int * broadcast_ether_addr ;
 scalar_t__ wpa_auth_set_key (struct wpa_authenticator*,int ,int ,int *,int,int ,int ) ;
 int wpa_cipher_to_alg (int ) ;

__attribute__((used)) static int wpa_group_config_group_keys(struct wpa_authenticator *wpa_auth,
                       struct wpa_group *group)
{
    int ret = 0;
    if (wpa_auth_set_key(wpa_auth, group->vlan_id,
                 wpa_cipher_to_alg(wpa_auth->conf.wpa_group),
                 (uint8_t *)broadcast_ether_addr, group->GN,
                 group->GTK[group->GN - 1], group->GTK_len) < 0)
        ret = -1;
    return ret;
}
