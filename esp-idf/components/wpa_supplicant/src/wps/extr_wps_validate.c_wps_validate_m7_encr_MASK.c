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
struct wps_parse_attr {int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/  encr_type; int /*<<< orphan*/  network_key_len; int /*<<< orphan*/  network_key; int /*<<< orphan*/  network_key_idx; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  e_snonce2; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct wpabuf const*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC12(const struct wpabuf *tlvs, int ap, int wps2)
{
	struct wps_parse_attr *attr;
	int ret;

	attr = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));
	if (attr == NULL) {
		ret = -99;
		goto _out;
	}
	
	if (tlvs == NULL) {
		FUNC2(MSG_INFO, "WPS-STRICT: No TLVs in M7 encrypted "
			   "settings");
		ret = -1;
		goto _out;
	}
	if (FUNC3(tlvs, attr) < 0) {
		FUNC2(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
			   "in M7 encrypted settings");
		ret = -1;
		goto _out;
	}

	if (FUNC5(attr->e_snonce2, 1) ||
	    FUNC11(attr->ssid, attr->ssid_len, !ap) ||
	    FUNC8(attr->mac_addr, !ap) ||
	    FUNC4(attr->auth_type, !ap) ||
	    FUNC6(attr->encr_type, !ap) ||
	    FUNC10(attr->network_key_idx, 0) ||
	    FUNC9(attr->network_key, attr->network_key_len,
				     attr->encr_type, !ap) ||
	    FUNC7(attr->key_wrap_auth, 1)) {
		FUNC2(MSG_INFO, "WPS-STRICT: Invalid M7 encrypted "
			   "settings");
#ifdef WPS_STRICT_WPS2
		if (wps2) {
			ret = -1;
			goto _out;
		}
#else /* WPS_STRICT_WPS2 */
		ret = -1;
		goto _out;
#endif /* WPS_STRICT_WPS2 */
	}

	ret = 0;
_out:
	if (attr)
		FUNC0(attr);

	return ret;
}