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
typedef  int u8 ;
typedef  int u16 ;
struct wpa_sm {int /*<<< orphan*/  group_cipher; } ;
struct wpa_gtk_data {int gtk_len; int keyidx; int /*<<< orphan*/  gtk; int /*<<< orphan*/  tx; int /*<<< orphan*/  alg; int /*<<< orphan*/  key_rsc_len; } ;
struct wpa_eapol_ie_parse {int const* gtk; int gtk_len; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_KEY_INFO_ENCR_KEY_DATA ; 
 scalar_t__ FUNC1 (struct wpa_sm*,struct wpa_eapol_ie_parse*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_sm*,int) ; 
 int /*<<< orphan*/  FUNC7 (int const*,size_t,struct wpa_eapol_ie_parse*) ; 

int   FUNC8(struct wpa_sm *sm,
                         const u8 *keydata,
                         size_t keydatalen,
                         u16 key_info,
                         struct wpa_gtk_data *gd)
{
    int maxkeylen;
    struct wpa_eapol_ie_parse ie;

    FUNC3(MSG_DEBUG, "RSN: msg 1/2 key data", keydata, keydatalen);
    FUNC7(keydata, keydatalen, &ie);
    if (ie.gtk && !(key_info & WPA_KEY_INFO_ENCR_KEY_DATA)) {
        #ifdef DEBUG_PRINT    
        wpa_printf(MSG_DEBUG, "WPA: GTK IE in unencrypted key data");
      #endif    
        return -1;
    }
    if (ie.gtk == NULL) {
         #ifdef DEBUG_PRINT        
        wpa_printf(MSG_DEBUG, "WPA: No GTK IE in Group Key msg 1/2");
       #endif     
        return -1;
    }
    maxkeylen = gd->gtk_len = ie.gtk_len - 2;

    if (FUNC5(sm->group_cipher,
                          gd->gtk_len, maxkeylen,
                          &gd->key_rsc_len, &gd->alg))
        return -1;

    FUNC3(MSG_DEBUG, "RSN: received GTK in group key handshake",
            ie.gtk, ie.gtk_len);
    gd->keyidx = ie.gtk[0] & 0x3;
    gd->tx = FUNC6(sm,
                              !!(ie.gtk[0] & FUNC0(2)));
    if (ie.gtk_len - 2 > sizeof(gd->gtk)) {
         #ifdef DEBUG_PRINT    
        wpa_printf(MSG_DEBUG, "RSN: Too long GTK in GTK IE "
               "(len=%lu)", (unsigned long) ie.gtk_len - 2);
      #endif     
        return -1;
    }
    FUNC2(gd->gtk, ie.gtk + 2, ie.gtk_len - 2);

    if (FUNC1(sm, &ie) < 0)
    {   
        #ifdef DEBUG_PRINT
        wpa_printf(MSG_DEBUG, "RSN: Failed to configure IGTK");
            #endif
    }       
    return 0;
}