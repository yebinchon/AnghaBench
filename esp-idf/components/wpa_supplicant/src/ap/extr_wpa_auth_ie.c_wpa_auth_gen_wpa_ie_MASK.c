#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int wpa; int /*<<< orphan*/  wpa_key_mgmt; } ;
struct wpa_authenticator {int wpa_ie_len; int /*<<< orphan*/ * wpa_ie; TYPE_1__ conf; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int WPA_PROTO_RSN ; 
 int WPA_PROTO_WPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC7(struct wpa_authenticator *wpa_auth)
{
	u8 *pos, buf[128];
	int res;

	pos = buf;

	if (wpa_auth->conf.wpa & WPA_PROTO_RSN) {
		res = FUNC5(&wpa_auth->conf,
				       pos, buf + sizeof(buf) - pos, NULL);
		if (res < 0)
			return res;
		pos += res;
	}
#ifdef CONFIG_IEEE80211R
	if (wpa_key_mgmt_ft(wpa_auth->conf.wpa_key_mgmt)) {
		res = wpa_write_mdie(&wpa_auth->conf, pos,
				     buf + sizeof(buf) - pos);
		if (res < 0)
			return res;
		pos += res;
	}
#endif /* CONFIG_IEEE80211R */
	if (wpa_auth->conf.wpa & WPA_PROTO_WPA) {
		res = FUNC6(&wpa_auth->conf,
				       pos, buf + sizeof(buf) - pos);
		if (res < 0)
			return res;
		pos += res;
	}

	FUNC1(wpa_auth->wpa_ie);
	wpa_auth->wpa_ie = FUNC2(pos - buf);
	if (wpa_auth->wpa_ie == NULL)
		return -1;
	FUNC0(wpa_auth->wpa_ie, buf, pos - buf);
	wpa_auth->wpa_ie_len = pos - buf;

	return 0;
}