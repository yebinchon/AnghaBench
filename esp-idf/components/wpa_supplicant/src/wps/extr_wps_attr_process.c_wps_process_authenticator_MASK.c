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
struct wps_data {int /*<<< orphan*/  authkey; struct wpabuf const* last_msg; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int WPS_AUTHENTICATOR_LEN ; 
 int /*<<< orphan*/  WPS_AUTHKEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpabuf const*) ; 
 int FUNC4 (struct wpabuf const*) ; 

int FUNC5(struct wps_data *wps, const u8 *authenticator,
			      const struct wpabuf *msg)
{
	u8 hash[SHA256_MAC_LEN];
	const u8 *addr[2];
	size_t len[2];

	if (authenticator == NULL) {
		FUNC2(MSG_DEBUG,  "WPS: No Authenticator attribute "
			   "included");
		return -1;
	}

	if (wps->last_msg == NULL) {
		FUNC2(MSG_DEBUG,  "WPS: Last message not available for "
			   "validating authenticator");
		return -1;
	}

	/* Authenticator = HMAC-SHA256_AuthKey(M_prev || M_curr*)
	 * (M_curr* is M_curr without the Authenticator attribute)
	 */
	addr[0] = FUNC3(wps->last_msg);
	len[0] = FUNC4(wps->last_msg);
	addr[1] = FUNC3(msg);
	len[1] = FUNC4(msg) - 4 - WPS_AUTHENTICATOR_LEN;
	FUNC0(wps->authkey, WPS_AUTHKEY_LEN, 2, addr, len, hash);
	if (FUNC1(hash, authenticator, WPS_AUTHENTICATOR_LEN) != 0) {
		FUNC2(MSG_DEBUG,  "WPS: Incorrect Authenticator");
		return -1;
	}

	return 0;
}