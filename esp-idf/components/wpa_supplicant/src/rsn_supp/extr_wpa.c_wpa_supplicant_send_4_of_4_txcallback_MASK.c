#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ gtk_len; } ;
struct wpa_sm {int key_info; int key_install; int /*<<< orphan*/  bssid; TYPE_1__ gd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLME_SETPROTECTION_KEY_TYPE_PAIRWISE ; 
 int /*<<< orphan*/  MLME_SETPROTECTION_PROTECT_TYPE_RX ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WLAN_REASON_UNSPECIFIED ; 
 int /*<<< orphan*/  WPA_GROUP_HANDSHAKE ; 
 int WPA_KEY_INFO_INSTALL ; 
 int WPA_KEY_INFO_SECURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wpa_sm*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct wpa_sm*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_sm*,int /*<<< orphan*/ ,int) ; 

int   FUNC6(struct wpa_sm *sm)
{
       u16 key_info=sm->key_info;

    if (sm->key_install && key_info & WPA_KEY_INFO_INSTALL) {
        if (FUNC4(sm))
            goto failed;
    }
    else if (sm->key_install == false) {
        FUNC0(MSG_DEBUG, "PTK has been installed, it may be an attack, ignor it.");
    }

    FUNC2(WPA_GROUP_HANDSHAKE);
    
    if((sm->gd).gtk_len) {
    	if (sm->key_install) {
          if (FUNC3(sm, &(sm->gd))) 
            goto failed;
    	}
    	else {
    	    FUNC0(MSG_DEBUG, "GTK has been installed, it may be an attack, ignor it.");
    	}
        FUNC5(sm, sm->bssid,
                    key_info & WPA_KEY_INFO_SECURE);
    }


    if (key_info & WPA_KEY_INFO_SECURE) {
        FUNC1(
            sm, sm->bssid, MLME_SETPROTECTION_PROTECT_TYPE_RX,
            MLME_SETPROTECTION_KEY_TYPE_PAIRWISE);
    }

    sm->key_install = false;

    return 0;

failed:
       return WLAN_REASON_UNSPECIFIED; 
}