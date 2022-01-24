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
struct wps_parse_attr {int /*<<< orphan*/  network_key_shareable; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  encr_type; int /*<<< orphan*/  network_key_len; int /*<<< orphan*/  network_key; int /*<<< orphan*/  network_key_idx; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  network_idx; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC4 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(const u8 *cred, size_t len)
{
	struct wps_parse_attr *attr;
	struct wpabuf buf;
	int ret;

	attr = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));
	if (attr == NULL) {
		ret = -99;
		goto _out;
	}

	if (cred == NULL) {
		ret = -1;
		goto _out;
	}
	FUNC3(&buf, cred, len);
	if (FUNC4(&buf, attr) < 0) {
		FUNC2(MSG_INFO, "WPS-STRICT: Failed to parse Credential");
		ret = -1;
		goto _out;
	}

	if (FUNC8(attr->network_idx, 1) ||
	    FUNC12(attr->ssid, attr->ssid_len, 1) ||
	    FUNC5(attr->auth_type, 1) ||
	    FUNC6(attr->encr_type, 1) ||
	    FUNC10(attr->network_key_idx, 0) ||
	    FUNC9(attr->network_key, attr->network_key_len,
				     attr->encr_type, 1) ||
	    FUNC7(attr->mac_addr, 1) ||
	    FUNC11(attr->network_key_shareable, 0))
	{
		FUNC2(MSG_INFO, "WPS-STRICT: Invalid Credential");
		ret = -1;
		goto _out;
	}

	ret = 0;
_out:
	if (attr)
		FUNC0(attr);

	return ret;
}