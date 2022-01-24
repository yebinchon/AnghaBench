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
typedef  int u16 ;
struct wpa_ptk {int /*<<< orphan*/  kck; } ;
struct wpa_eapol_key {int /*<<< orphan*/ * key_mic; int /*<<< orphan*/  key_info; } ;
struct ieee802_1x_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int WPA_KEY_INFO_TYPE_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int FUNC9(struct wpa_ptk *PTK, u8 *data, size_t data_len)
{
    struct ieee802_1x_hdr *hdr;
    struct wpa_eapol_key *key;
    u16 key_info;
    int ret = 0;
    int mic_ret = 0;
    u8 mic[16];
    char debug_log[8];

    if (data_len < sizeof(*hdr) + sizeof(*key)){
        FUNC8( MSG_DEBUG, "invalid data length, len=%u\n", data_len);
        return -1;
    }

    hdr = (struct ieee802_1x_hdr *) data;
    key = (struct wpa_eapol_key *) (hdr + 1);
    key_info = FUNC0(key->key_info);
    FUNC2(mic, key->key_mic, 16);
    FUNC3(key->key_mic, 0, 16);

    mic_ret = FUNC7(PTK->kck, key_info & WPA_KEY_INFO_TYPE_MASK, data, data_len, key->key_mic);
    if ( mic_ret || FUNC1(mic, key->key_mic, 16) != 0) {
        ret = -1;
    }
    FUNC5(debug_log, 0, 8);
    FUNC4(debug_log, "you mic", sizeof("you mic"));
    FUNC6(debug_log, mic, 16);
    FUNC5(debug_log, 0, 8);
    FUNC4(debug_log, "my mic", sizeof("my mic"));
    FUNC6(debug_log, key->key_mic, 16);

    FUNC2(key->key_mic, mic, 16);
    return ret;
}