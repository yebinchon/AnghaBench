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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u16 ;
struct TYPE_2__ {struct wpa_eapol_key const* kek; } ;
struct wpa_sm {TYPE_1__ ptk; int /*<<< orphan*/  group_cipher; } ;
struct wpa_gtk_data {int keyidx; int /*<<< orphan*/  tx; int /*<<< orphan*/ * gtk; int /*<<< orphan*/  alg; int /*<<< orphan*/  key_rsc_len; int /*<<< orphan*/  gtk_len; } ;
struct wpa_eapol_key {struct wpa_eapol_key const* key_iv; int /*<<< orphan*/  key_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WPA_KEY_INFO_KEY_INDEX_MASK ; 
 int WPA_KEY_INFO_KEY_INDEX_SHIFT ; 
 int WPA_KEY_INFO_TXRX ; 
 unsigned long WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ; 
 unsigned long WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ; 
 scalar_t__ FUNC1 (struct wpa_eapol_key const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wpa_eapol_key const*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_sm*,int) ; 

int   FUNC7(struct wpa_sm *sm,
                         const struct wpa_eapol_key *key,
                         size_t keydatalen, int key_info,
                         size_t extra_len, u16 ver,
                         struct wpa_gtk_data *gd)
{
    size_t maxkeylen;
    u8 ek[32];

    gd->gtk_len = FUNC0(key->key_length);
    maxkeylen = keydatalen;
    if (keydatalen > extra_len) {
         #ifdef DEBUG_PRINT    
        wpa_printf(MSG_DEBUG, "WPA: Truncated EAPOL-Key packet:"
               " key_data_length=%lu > extra_len=%lu",
               (unsigned long) keydatalen,
               (unsigned long) extra_len);
      #endif     
        return -1;
    }
    if (ver == WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {
        if (maxkeylen < 8) {
              #ifdef DEBUG_PRINT            
            wpa_printf(MSG_DEBUG, "WPA: Too short maxkeylen (%lu)",
                   (unsigned long) maxkeylen);
        #endif      
            return -1;
        }
        maxkeylen -= 8;
    }

    if (FUNC5(sm->group_cipher,
                          gd->gtk_len, maxkeylen,
                          &gd->key_rsc_len, &gd->alg))
        return -1;

    gd->keyidx = (key_info & WPA_KEY_INFO_KEY_INDEX_MASK) >>
        WPA_KEY_INFO_KEY_INDEX_SHIFT;
    if (ver == WPA_KEY_INFO_TYPE_HMAC_MD5_RC4) {
        FUNC2(ek, key->key_iv, 16);
        FUNC2(ek + 16, sm->ptk.kek, 16);
        if (keydatalen > sizeof(gd->gtk)) {
            #ifdef DEBUG_PRINT    
            wpa_printf(MSG_DEBUG, "WPA: RC4 key data "
                   "too long (%lu)",
                   (unsigned long) keydatalen);
            #endif    
            return -1;
        }
        FUNC2(gd->gtk, key + 1, keydatalen);
        if (FUNC3(ek, 32, 256, gd->gtk, keydatalen)) {
            #ifdef DEBUG_PRINT
            wpa_printf(MSG_DEBUG, "WPA: RC4 failed");
            #endif
            return -1;
        }
    } else if (ver == WPA_KEY_INFO_TYPE_HMAC_SHA1_AES) {
        if (keydatalen % 8) {
            #ifdef DEBUG_PRINT    
            wpa_printf(MSG_DEBUG, "WPA: Unsupported AES-WRAP "
                   "len %lu", (unsigned long) keydatalen);
             #endif    
            return -1;
        }
        if (maxkeylen > sizeof(gd->gtk)) {
                 #ifdef DEBUG_PRINT    
            wpa_printf(MSG_DEBUG, "WPA: AES-WRAP key data "
                   "too long (keydatalen=%lu maxkeylen=%lu)",
                   (unsigned long) keydatalen,
                   (unsigned long) maxkeylen);
            #endif      
            return -1;
        }
        if (FUNC1(sm->ptk.kek, maxkeylen / 8,
        				    (const u8 *) (key + 1), gd->gtk)) {
            #ifdef DEBUG_PRINT                       
        	wpa_printf(MSG_DEBUG, "WPA: AES unwrap "
                "failed - could not decrypt GTK");
            #endif
        	return -1;
        }
    } else {
        #ifdef DEBUG_PRINT    
        wpa_printf(MSG_DEBUG, "WPA: Unsupported key_info type %d",
               ver);
         #endif    
        return -1;
    }
    gd->tx = FUNC6(
        sm, !!(key_info & WPA_KEY_INFO_TXRX));
    return 0;
}