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
struct wps_data {int /*<<< orphan*/  authkey; struct wpabuf* last_msg; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_AUTHENTICATOR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  WPS_AUTHENTICATOR_LEN ; 
 int /*<<< orphan*/  WPS_AUTHKEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*) ; 
 size_t FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct wps_data *wps, struct wpabuf *msg)
{
	u8 hash[SHA256_MAC_LEN];
	const u8 *addr[2];
	size_t len[2];

	if (wps->last_msg == NULL) {
		FUNC1(MSG_DEBUG,  "WPS: Last message not available for "
			   "building authenticator");
		return -1;
	}

	/* Authenticator = HMAC-SHA256_AuthKey(M_prev || M_curr*)
	 * (M_curr* is M_curr without the Authenticator attribute)
	 */
	addr[0] = FUNC2(wps->last_msg);
	len[0] = FUNC3(wps->last_msg);
	addr[1] = FUNC2(msg);
	len[1] = FUNC3(msg);
	FUNC0(wps->authkey, WPS_AUTHKEY_LEN, 2, addr, len, hash);
	FUNC1(MSG_DEBUG,  "WPS:  * Authenticator");
	FUNC4(msg, ATTR_AUTHENTICATOR);
	FUNC4(msg, WPS_AUTHENTICATOR_LEN);
	FUNC5(msg, hash, WPS_AUTHENTICATOR_LEN);

	return 0;
}