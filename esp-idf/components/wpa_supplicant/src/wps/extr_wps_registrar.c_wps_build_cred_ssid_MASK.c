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
struct wps_credential {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_SSID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wpabuf *msg,
			       const struct wps_credential *cred)
{
	FUNC1(MSG_DEBUG,  "WPS:  * SSID");
	FUNC0(MSG_DEBUG, "WPS: SSID for Credential",
			  cred->ssid, cred->ssid_len);
	FUNC2(msg, ATTR_SSID);
	FUNC2(msg, cred->ssid_len);
	FUNC3(msg, cred->ssid, cred->ssid_len);
	return 0;
}