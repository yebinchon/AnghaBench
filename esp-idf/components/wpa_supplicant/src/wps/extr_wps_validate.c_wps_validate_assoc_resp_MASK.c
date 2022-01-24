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
struct wps_parse_attr {int /*<<< orphan*/ * version2; int /*<<< orphan*/  response_type; int /*<<< orphan*/  version; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct wpabuf const*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(const struct wpabuf *wps_ie)
{
	struct wps_parse_attr *attr;
	int wps2;
	int ret;

	attr = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));
	if (attr == NULL) {
		ret = -99;
		goto _out;
	}


	if (wps_ie == NULL) {
		FUNC2(MSG_INFO, "WPS-STRICT: No WPS IE in "
			   "(Re)Association Response frame");
		ret = -1;
		goto _out;
	}
	if (FUNC3(wps_ie, attr) < 0) {
		FUNC2(MSG_INFO, "WPS-STRICT: Failed to parse WPS IE in "
			   "(Re)Association Response frame");
		ret = -1;
		goto _out;
	}

	wps2 = attr->version2 != NULL;
	if (FUNC5(attr->version, 1) ||
	    FUNC4(attr->response_type, 1) ||
	    FUNC6(attr->version2, wps2)) {
		FUNC2(MSG_INFO, "WPS-STRICT: Invalid (Re)Association "
			   "Response frame");
		ret = -1;
		goto _out;
	}

	ret = 0;
_out:
	if(attr)
		FUNC0(attr);

	return ret;
}