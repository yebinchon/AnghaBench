
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpa_sm {scalar_t__ group_cipher; scalar_t__* bssid; } ;
struct wpa_gtk_data {int gtk_len; int keyidx; int alg; scalar_t__* gtk; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 scalar_t__ WPA_CIPHER_TKIP ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int wpa_hexdump (int ,char*,scalar_t__*,int) ;
 int wpa_printf (int ,char*,int,int) ;
 scalar_t__ wpa_sm_get_key (scalar_t__*,int*,scalar_t__*,int*,scalar_t__*,int,int) ;

bool wpa_supplicant_gtk_in_use(struct wpa_sm *sm, struct wpa_gtk_data *gd)
{
    u8 *_gtk = gd->gtk;
    u8 gtk_buf[32];
    u8 gtk_get[32] = {0};
    u8 ifx;
    int alg;
    u8 bssid[6];
    int keyidx;

    wpa_hexdump(MSG_DEBUG, "WPA: Group Key", gd->gtk, gd->gtk_len);





    if (sm->group_cipher == WPA_CIPHER_TKIP) {

        memcpy(gtk_buf, gd->gtk, 16);
        memcpy(gtk_buf + 16, gd->gtk + 16, 8);
        memcpy(gtk_buf + 24, gd->gtk + 24, 8);
        _gtk = gtk_buf;
    }


    if (wpa_sm_get_key(&ifx, &alg, bssid, &keyidx, gtk_get, gd->gtk_len, gd->keyidx) == 0) {
        if (ifx == 0 && alg == gd->alg && memcmp(bssid, sm->bssid, ETH_ALEN) == 0 &&
          memcmp(_gtk, gtk_get, gd->gtk_len) == 0) {
            wpa_printf(MSG_DEBUG, "GTK %d is already in use in entry %d, it may be an attack, ignor it.", gd->keyidx, gd->keyidx + 2);
            return 1;
        }
    }

    if (wpa_sm_get_key(&ifx, &alg, bssid, &keyidx, gtk_get, gd->gtk_len, (gd->keyidx+1)%2) == 0) {
     if (ifx == 0 && alg == gd->alg && memcmp(bssid, sm->bssid, ETH_ALEN) == 0 &&
       memcmp(_gtk, gtk_get, gd->gtk_len) == 0) {
            wpa_printf(MSG_DEBUG, "GTK %d is already in use in entry %d, it may be an attack, ignor it.", gd->keyidx, (gd->keyidx+1)%2 + 2);
            return 1;
        }
    }

    return 0;
}
