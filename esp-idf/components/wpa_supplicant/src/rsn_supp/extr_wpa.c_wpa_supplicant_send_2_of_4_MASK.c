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
typedef  struct wpa_eapol_key {int /*<<< orphan*/  key_mic; struct wpa_eapol_key const* key_nonce; struct wpa_eapol_key const* key_data_length; struct wpa_eapol_key const* replay_counter; struct wpa_eapol_key const* key_length; struct wpa_eapol_key const* key_info; int /*<<< orphan*/  type; } const wpa_eapol_key ;
typedef  struct wpa_eapol_key u8 ;
struct wpa_sm {scalar_t__ proto; } ;
struct wpa_ptk {int /*<<< orphan*/  kck; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_KEY_TYPE_RSN ; 
 int /*<<< orphan*/  EAPOL_KEY_TYPE_WPA ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int WPA_KEY_INFO_KEY_TYPE ; 
 int WPA_KEY_INFO_MIC ; 
 size_t WPA_NONCE_LEN ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_eapol_key const*,size_t) ; 
 size_t WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_eapol_key const*,struct wpa_eapol_key const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_sm*,int /*<<< orphan*/ ,int,unsigned char const*,int /*<<< orphan*/ ,struct wpa_eapol_key*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpa_eapol_key const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct wpa_eapol_key* FUNC5 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_eapol_key*) ; 

int   FUNC7(struct wpa_sm *sm, const unsigned char *dst,
                   const struct wpa_eapol_key *key,
                   int ver, const u8 *nonce,
                   const u8 *wpa_ie, size_t wpa_ie_len,
                   struct wpa_ptk *ptk)
{
    size_t rlen;
    struct wpa_eapol_key *reply;
    u8 *rbuf;

    if (wpa_ie == NULL) {
       #ifdef DEBUG_PRINT    
        wpa_printf(MSG_ERROR, "WPA: No wpa_ie set - cannot "
               "generate msg 2/4");
       #endif
        return -1;
    }

    FUNC3(MSG_MSGDUMP, "WPA: WPA IE for msg 2/4\n", wpa_ie, wpa_ie_len);

    rbuf = FUNC5(sm, IEEE802_1X_TYPE_EAPOL_KEY,
                  NULL, sizeof(*reply) + wpa_ie_len,
                  &rlen, (void *) &reply);
    if (rbuf == NULL) {
        return -1;
    }

    reply->type = sm->proto == WPA_PROTO_RSN ?
        EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
    FUNC0(reply->key_info,
             ver | WPA_KEY_INFO_KEY_TYPE | WPA_KEY_INFO_MIC);
    if (sm->proto == WPA_PROTO_RSN)
        FUNC0(reply->key_length, 0);
    else
        FUNC1(reply->key_length, key->key_length, 2);

    FUNC1(reply->replay_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);

    FUNC0(reply->key_data_length, wpa_ie_len);
    FUNC1(reply + 1, wpa_ie, wpa_ie_len);

    FUNC1(reply->key_nonce, nonce, WPA_NONCE_LEN);
    
    FUNC4(MSG_DEBUG, "WPA Send EAPOL-Key 2/4\n");
    
    FUNC2(sm, ptk->kck, ver, dst, ETH_P_EAPOL,
               rbuf, rlen, reply->key_mic);
    FUNC6(rbuf);

    return 0;
}