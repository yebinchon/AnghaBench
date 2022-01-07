
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * seq; } ;
struct wpa_sm {scalar_t__ group_cipher; int key_entry_valid; scalar_t__ pairwise_cipher; int bssid; TYPE_1__ install_gtk; } ;
struct wpa_gtk_data {int gtk_len; int keyidx; int tx; int key_rsc_len; int alg; int * gtk; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_CIPHER_NONE ;
 scalar_t__ WPA_CIPHER_TKIP ;
 int memcpy (int *,int *,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_sm_set_key (TYPE_1__*,int,int ,int,int,int *,int,int *,int,int) ;

int wpa_supplicant_install_gtk(struct wpa_sm *sm,
                      struct wpa_gtk_data *gd)
{
    u8 *_gtk = gd->gtk;
    u8 gtk_buf[32];
       u8 *key_rsc=(sm->install_gtk).seq;

    wpa_hexdump(MSG_DEBUG, "WPA: Group Key", gd->gtk, gd->gtk_len);






    wpa_hexdump(MSG_DEBUG, "WPA: RSC", key_rsc, gd->key_rsc_len);
    if (sm->group_cipher == WPA_CIPHER_TKIP) {

        memcpy(gtk_buf, gd->gtk, 16);
        memcpy(gtk_buf + 16, gd->gtk + 16, 8);
        memcpy(gtk_buf + 24, gd->gtk + 24, 8);
        _gtk = gtk_buf;
    }

    sm->key_entry_valid = gd->keyidx;
    if (sm->pairwise_cipher == WPA_CIPHER_NONE) {
        if (wpa_sm_set_key(&(sm->install_gtk), gd->alg,
                   sm->bssid,
                   gd->keyidx, 1, key_rsc, gd->key_rsc_len,
                   _gtk, gd->gtk_len,sm->key_entry_valid) < 0) {




            return -1;
        }
    } else if (wpa_sm_set_key(&(sm->install_gtk), gd->alg,
                  sm->bssid,
                  gd->keyidx, gd->tx, key_rsc, gd->key_rsc_len,
                  _gtk, gd->gtk_len, sm->key_entry_valid) < 0) {





        return -1;
    }

    return 0;
}
