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
struct wps_credential {int auth_type; int key_len; scalar_t__* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WPS_AUTH_WPA2PSK ; 
 int WPS_AUTH_WPAPSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct wps_credential *cred)
{
	if (cred->auth_type & (WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK) &&
	    cred->key_len > 8 && cred->key_len < 64 &&
	    cred->key[cred->key_len - 1] == 0) {
#ifdef CONFIG_WPS_STRICT
		wpa_printf(MSG_INFO, "WPS: WPA/WPA2-Personal passphrase uses "
			   "forbidden NULL termination");
		wpa_hexdump_ascii_key(MSG_INFO, "WPS: Network Key",
				      cred->key, cred->key_len);
		return -1;
#else /* CONFIG_WPS_STRICT */
		/*
		 * A deployed external registrar is known to encode ASCII
		 * passphrases incorrectly. Remove the extra NULL termination
		 * to fix the encoding.
		 */
		FUNC1(MSG_DEBUG,  "WPS: Workaround - remove NULL "
			   "termination from ASCII passphrase");
		cred->key_len--;
#endif /* CONFIG_WPS_STRICT */
	}
	return 0;
}