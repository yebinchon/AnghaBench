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
struct wps_credential {size_t ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct wps_credential *cred, const u8 *ssid,
				 size_t ssid_len)
{
	if (ssid == NULL) {
		FUNC2(MSG_DEBUG,  "WPS: Credential did not include SSID");
		return -1;
	}

	/* Remove zero-padding since some Registrar implementations seem to use
	 * hardcoded 32-octet length for this attribute */
	while (ssid_len > 0 && ssid[ssid_len - 1] == 0)
		ssid_len--;

	FUNC1(MSG_DEBUG, "WPS: SSID", ssid, ssid_len);
	if (ssid_len <= sizeof(cred->ssid)) {
		FUNC0(cred->ssid, ssid, ssid_len);
		cred->ssid_len = ssid_len;
	}

	return 0;
}