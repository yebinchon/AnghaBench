#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct wpa_sm {scalar_t__ group_cipher; scalar_t__* bssid; } ;
struct wpa_gtk_data {int gtk_len; int keyidx; int alg; scalar_t__* gtk; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPA_CIPHER_TKIP ; 
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,int*,scalar_t__*,int*,scalar_t__*,int,int) ; 

bool FUNC5(struct wpa_sm *sm, struct wpa_gtk_data *gd)
{
    u8 *_gtk = gd->gtk;
    u8 gtk_buf[32];
    u8 gtk_get[32] = {0};
    u8 ifx;
    int alg;
    u8 bssid[6];
    int keyidx;

    FUNC2(MSG_DEBUG, "WPA: Group Key", gd->gtk, gd->gtk_len);

    #ifdef DEBUG_PRINT
    wpa_printf(MSG_DEBUG, "WPA: Judge GTK: (keyidx=%d len=%d).", gd->keyidx, gd->gtk_len);
    #endif

    if (sm->group_cipher == WPA_CIPHER_TKIP) {
        /* Swap Tx/Rx keys for Michael MIC */
        FUNC1(gtk_buf, gd->gtk, 16);
        FUNC1(gtk_buf + 16, gd->gtk + 16, 8);
        FUNC1(gtk_buf + 24, gd->gtk + 24, 8);
        _gtk = gtk_buf;
    }

    //check if gtk is in use.
    if (FUNC4(&ifx, &alg, bssid, &keyidx, gtk_get, gd->gtk_len, gd->keyidx) == 0) {
        if (ifx == 0 && alg == gd->alg && FUNC0(bssid, sm->bssid, ETH_ALEN) == 0 &&
        		FUNC0(_gtk, gtk_get, gd->gtk_len) == 0) {
            FUNC3(MSG_DEBUG, "GTK %d is already in use in entry %d, it may be an attack, ignor it.", gd->keyidx, gd->keyidx + 2);
            return true;
        }
    }

    if (FUNC4(&ifx, &alg, bssid, &keyidx, gtk_get, gd->gtk_len, (gd->keyidx+1)%2) == 0) {
    	if (ifx == 0 && alg == gd->alg && FUNC0(bssid, sm->bssid, ETH_ALEN) == 0 &&
    			FUNC0(_gtk, gtk_get, gd->gtk_len) == 0) {
            FUNC3(MSG_DEBUG, "GTK %d is already in use in entry %d, it may be an attack, ignor it.", gd->keyidx, (gd->keyidx+1)%2 + 2);
            return true;
        }
    }

    return false;
}