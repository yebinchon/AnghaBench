
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__* seq; } ;
struct TYPE_3__ {scalar_t__* seq; } ;
struct wpa_sm {scalar_t__ proto; TYPE_2__ install_gtk; TYPE_1__ install_ptk; } ;
struct wpa_eapol_key {scalar_t__* key_rsc; } ;


 int MSG_DEBUG ;
 int WPA_KEY_RSC_LEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int os_bzero (scalar_t__*,int) ;
 int wpa_hexdump (int ,char*,scalar_t__*,int) ;

void wpa_sm_set_seq(struct wpa_sm *sm, struct wpa_eapol_key *key, u8 isptk)
{
    u8 *key_rsc, *seq;
    u8 null_rsc[WPA_KEY_RSC_LEN];

    os_bzero(null_rsc, WPA_KEY_RSC_LEN);

    if (sm->proto == WPA_PROTO_RSN) {
        key_rsc = null_rsc;
    } else {
        key_rsc = key->key_rsc;
        wpa_hexdump(MSG_DEBUG, "WPA: RSC", key_rsc, WPA_KEY_RSC_LEN);
    }

    seq=(isptk) ? (sm->install_ptk).seq : (sm->install_gtk).seq;
    memcpy(seq, key_rsc, WPA_KEY_RSC_LEN);
}
