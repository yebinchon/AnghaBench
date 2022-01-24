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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpa_gtk_data {int dummy; } ;
struct wpa_sm {scalar_t__ proto; int /*<<< orphan*/  key_info; struct wpa_gtk_data gd; } ;
struct wpa_eapol_key {int /*<<< orphan*/  key_data_length; int /*<<< orphan*/  key_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_REASON_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPA_GROUP_HANDSHAKE ; 
 scalar_t__ WPA_PROTO_RSN ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_gtk_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_sm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_sm*,struct wpa_eapol_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wpa_sm*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_gtk_data*) ; 
 int FUNC7 (struct wpa_sm*,struct wpa_eapol_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct wpa_gtk_data*) ; 
 scalar_t__ FUNC8 (struct wpa_sm*,struct wpa_eapol_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void   FUNC9(struct wpa_sm *sm,
                      const unsigned char *src_addr,
                      struct wpa_eapol_key *key,
                      int extra_len, u16 ver)
{
    u16 key_info, keydatalen;
    int  ret;
    struct wpa_gtk_data *gd=&(sm->gd);

    FUNC1(gd, 0, sizeof(struct wpa_gtk_data));

    FUNC2(MSG_DEBUG, "WPA 1/2 Group Key Handshake\n");
    
    key_info = FUNC0(key->key_info);
    keydatalen = FUNC0(key->key_data_length);

    if (sm->proto == WPA_PROTO_RSN) {
        ret = FUNC6(sm,
                            (const u8 *) (key + 1),
                            keydatalen, key_info,
                            gd);
    } else {
        ret = FUNC7(sm, key, keydatalen,
                            key_info, extra_len,
                            ver, gd);
    }

    FUNC5(WPA_GROUP_HANDSHAKE);

    if (ret)
        goto failed;

    /*before callback, set seq for add param difficult in callback*/ 
    FUNC4(sm, key, 0);
    sm->key_info=key_info;

    if (FUNC8(sm, key, ver, key_info))
        goto failed;

    return;

failed:
    FUNC3(sm, WLAN_REASON_UNSPECIFIED);
}