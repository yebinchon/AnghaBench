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
struct TYPE_2__ {int /*<<< orphan*/  kck; } ;
struct wpa_sm {scalar_t__ pairwise_cipher; scalar_t__ proto; TYPE_1__ ptk; scalar_t__ ptk_set; int /*<<< orphan*/  request_counter; int /*<<< orphan*/  key_mgmt; } ;
struct wpa_eapol_key {int /*<<< orphan*/ * key_mic; int /*<<< orphan*/  key_data_length; int /*<<< orphan*/  replay_counter; int /*<<< orphan*/  key_length; int /*<<< orphan*/  key_info; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_KEY_TYPE_RSN ; 
 int /*<<< orphan*/  EAPOL_KEY_TYPE_WPA ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPA_CIPHER_CCMP ; 
 int WPA_KEY_INFO_ERROR ; 
 int WPA_KEY_INFO_KEY_TYPE ; 
 int WPA_KEY_INFO_MIC ; 
 int WPA_KEY_INFO_REQUEST ; 
 int WPA_KEY_INFO_SECURE ; 
 int WPA_KEY_INFO_TYPE_AES_128_CMAC ; 
 int WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 ; 
 int WPA_KEY_INFO_TYPE_HMAC_SHA1_AES ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_sm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct wpa_sm*,int /*<<< orphan*/ *) ; 

void   FUNC10(struct wpa_sm *sm, int error, int pairwise)
{
    size_t rlen;
    struct wpa_eapol_key *reply;
    int key_info, ver;
    u8 bssid[ETH_ALEN], *rbuf;

    if (FUNC4(sm->key_mgmt) || FUNC5(sm->key_mgmt))
        ver = WPA_KEY_INFO_TYPE_AES_128_CMAC;
    else if (sm->pairwise_cipher == WPA_CIPHER_CCMP)
        ver = WPA_KEY_INFO_TYPE_HMAC_SHA1_AES;
    else
        ver = WPA_KEY_INFO_TYPE_HMAC_MD5_RC4;

    if (FUNC9(sm, bssid) < 0) {
        #ifdef DEBUG_PRINT    
        wpa_printf(MSG_DEBUG, "Failed to read BSSID for EAPOL-Key "
               "request");
        #endif    
        return;
    }

    rbuf = FUNC7(sm, IEEE802_1X_TYPE_EAPOL_KEY, NULL,
                  sizeof(*reply), &rlen, (void *) &reply);
    if (rbuf == NULL)
        return;

    reply->type = sm->proto == WPA_PROTO_RSN ?
        EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
    key_info = WPA_KEY_INFO_REQUEST | ver;
    if (sm->ptk_set)
        key_info |= WPA_KEY_INFO_MIC;
    if (error)
        key_info |= WPA_KEY_INFO_ERROR|WPA_KEY_INFO_SECURE;
    if (pairwise)
        key_info |= WPA_KEY_INFO_KEY_TYPE;
    FUNC0(reply->key_info, key_info);
    FUNC0(reply->key_length, 0);
    FUNC2(reply->replay_counter, sm->request_counter,
          WPA_REPLAY_COUNTER_LEN);
    FUNC1(sm->request_counter, WPA_REPLAY_COUNTER_LEN);

    FUNC0(reply->key_data_length, 0);

   #ifdef DEBUG_PRINT    
    wpa_printf(MSG_DEBUG, "WPA: Sending EAPOL-Key Request (error=%d "
           "pairwise=%d ptk_set=%d len=%lu)",
           error, pairwise, sm->ptk_set, (unsigned long) rlen);
   #endif
    FUNC3(sm, sm->ptk.kck, ver, bssid, ETH_P_EAPOL,
               rbuf, rlen, key_info & WPA_KEY_INFO_MIC ?
               reply->key_mic : NULL);
    FUNC8(rbuf);
}