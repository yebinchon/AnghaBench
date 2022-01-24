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
struct wps_parse_attr {int /*<<< orphan*/  ap_channel; int /*<<< orphan*/  dot1x_enabled; int /*<<< orphan*/  key_prov_auto; int /*<<< orphan*/  eap_identity_len; int /*<<< orphan*/  eap_identity; int /*<<< orphan*/  eap_type_len; int /*<<< orphan*/  eap_type; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  network_key_len; int /*<<< orphan*/  network_key; int /*<<< orphan*/  network_key_idx; int /*<<< orphan*/  encr_type; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  network_idx; } ;
struct wps_credential {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wps_credential*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wps_credential*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct wps_credential*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct wps_credential*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct wps_credential*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct wps_credential*) ; 

int FUNC14(struct wps_parse_attr *attr,
		     struct wps_credential *cred)
{
	FUNC0(MSG_DEBUG,  "WPS: Process Credential");

	/* TODO: support multiple Network Keys */
	if (FUNC9(cred, attr->network_idx) ||
	    FUNC12(cred, attr->ssid, attr->ssid_len) ||
	    FUNC3(cred, attr->auth_type) ||
	    FUNC6(cred, attr->encr_type) ||
	    FUNC11(cred, attr->network_key_idx) ||
	    FUNC10(cred, attr->network_key,
					 attr->network_key_len) ||
	    FUNC8(cred, attr->mac_addr) ||
	    FUNC5(cred, attr->eap_type,
				      attr->eap_type_len) ||
	    FUNC4(cred, attr->eap_identity,
					  attr->eap_identity_len) ||
	    FUNC7(cred, attr->key_prov_auto) ||
	    FUNC1(cred, attr->dot1x_enabled) ||
	    FUNC2(cred, attr->ap_channel))
		return -1;

	return FUNC13(cred);
}