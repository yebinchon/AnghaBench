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
struct wps_parse_attr {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  network_key_len; int /*<<< orphan*/  network_key; int /*<<< orphan*/  network_key_idx; int /*<<< orphan*/  encr_type; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct wps_credential {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wps_credential*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wps_credential*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wps_credential*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wps_credential*) ; 

int FUNC9(struct wps_parse_attr *attr,
			    struct wps_credential *cred)
{
	FUNC1(MSG_DEBUG,  "WPS: Processing AP Settings");
	FUNC0(cred, 0, sizeof(*cred));
	/* TODO: optional attributes New Password and Device Password ID */
	if (FUNC7(cred, attr->ssid, attr->ssid_len) ||
	    FUNC2(cred, attr->auth_type) ||
	    FUNC3(cred, attr->encr_type) ||
	    FUNC6(cred, attr->network_key_idx) ||
	    FUNC5(cred, attr->network_key,
					 attr->network_key_len) ||
	    FUNC4(cred, attr->mac_addr))
		return -1;

	return FUNC8(cred);
}