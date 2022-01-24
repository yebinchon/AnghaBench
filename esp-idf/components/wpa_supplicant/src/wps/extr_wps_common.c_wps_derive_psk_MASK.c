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
struct wps_data {int /*<<< orphan*/  psk2; int /*<<< orphan*/  psk1; int /*<<< orphan*/  authkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  WPS_AUTHKEY_LEN ; 
 int /*<<< orphan*/  WPS_PSK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct wps_data *wps, const u8 *dev_passwd,
		    size_t dev_passwd_len)
{
	u8 hash[SHA256_MAC_LEN];

	FUNC0(wps->authkey, WPS_AUTHKEY_LEN, dev_passwd,
		                             (dev_passwd_len + 1) / 2, hash);
	FUNC1(wps->psk1, hash, WPS_PSK_LEN);
	FUNC0(wps->authkey, WPS_AUTHKEY_LEN,
		            dev_passwd + (dev_passwd_len + 1) / 2,
		            dev_passwd_len / 2, hash);
	FUNC1(wps->psk2, hash, WPS_PSK_LEN);

	FUNC2(MSG_DEBUG, "WPS: Device Password",
			      dev_passwd, dev_passwd_len);
	FUNC3(MSG_DEBUG, "WPS: PSK1", wps->psk1, WPS_PSK_LEN);
	FUNC3(MSG_DEBUG, "WPS: PSK2", wps->psk2, WPS_PSK_LEN);
}