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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  kck; } ;
struct wpa_sm {scalar_t__ proto; int /*<<< orphan*/  bssid; TYPE_1__ ptk; int /*<<< orphan*/  txcb_flags; } ;
struct wpa_eapol_key {int /*<<< orphan*/  key_mic; int /*<<< orphan*/  key_data_length; int /*<<< orphan*/  replay_counter; int /*<<< orphan*/  key_length; int /*<<< orphan*/  key_info; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_KEY_TYPE_RSN ; 
 int /*<<< orphan*/  EAPOL_KEY_TYPE_WPA ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPA_GROUP_HANDSHAKE_BIT ; 
 int WPA_KEY_INFO_KEY_INDEX_MASK ; 
 int WPA_KEY_INFO_MIC ; 
 int WPA_KEY_INFO_SECURE ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_sm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (struct wpa_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int   FUNC6(struct wpa_sm *sm,
                      const struct wpa_eapol_key *key,
                      int ver, u16 key_info)
{
    size_t rlen;
    struct wpa_eapol_key *reply;
    u8 *rbuf;

    rbuf = FUNC4(sm, IEEE802_1X_TYPE_EAPOL_KEY, NULL,
                  sizeof(*reply), &rlen, (void *) &reply);
    if (rbuf == NULL)
        return -1;

    sm->txcb_flags |= WPA_GROUP_HANDSHAKE_BIT;
    FUNC3(MSG_DEBUG, "2/2 txcb_flags=%d\n", sm->txcb_flags);

    reply->type = sm->proto == WPA_PROTO_RSN ?
        EAPOL_KEY_TYPE_RSN : EAPOL_KEY_TYPE_WPA;
    key_info &= WPA_KEY_INFO_KEY_INDEX_MASK;
    key_info |= ver | WPA_KEY_INFO_MIC | WPA_KEY_INFO_SECURE;
    FUNC0(reply->key_info, key_info);
    if (sm->proto == WPA_PROTO_RSN)
        FUNC0(reply->key_length, 0);
    else
        FUNC1(reply->key_length, key->key_length, 2);
    FUNC1(reply->replay_counter, key->replay_counter,
          WPA_REPLAY_COUNTER_LEN);

    FUNC0(reply->key_data_length, 0);
    
    FUNC3(MSG_DEBUG, "WPA Send 2/2 Group key\n");

    FUNC2(sm, sm->ptk.kck, ver, sm->bssid, ETH_P_EAPOL,
               rbuf, rlen, reply->key_mic);
    FUNC5(rbuf);

    return 0;
}