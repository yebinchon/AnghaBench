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
struct wps_data {int /*<<< orphan*/  state; int /*<<< orphan*/  dev_password_len; int /*<<< orphan*/ * dev_password; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M4 ; 
 int /*<<< orphan*/  WPS_M3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wps_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct wps_data *wps)
{
	struct wpabuf *msg;

	FUNC0(MSG_DEBUG,  "WPS: Building Message M3");

	if (wps->dev_password == NULL) {
		FUNC0(MSG_DEBUG,  "WPS: No Device Password available");
		return NULL;
	}
	FUNC9(wps, wps->dev_password, wps->dev_password_len);

	msg = FUNC1(1000);
	if (msg == NULL)
		return NULL;

	if (FUNC7(msg) ||
	    FUNC5(msg, WPS_M3) ||
	    FUNC6(wps, msg) ||
	    FUNC4(wps, msg) ||
	    FUNC8(msg, 0, NULL, 0) ||
	    FUNC3(wps, msg)) {
		FUNC2(msg);
		return NULL;
	}

	wps->state = RECV_M4;
	return msg;
}