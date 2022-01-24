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
struct wps_data {int wps_pin_revealed; int /*<<< orphan*/  state; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M7 ; 
 int /*<<< orphan*/  WPS_M6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC11(struct wps_data *wps)
{
	struct wpabuf *msg, *plain;

	FUNC0(MSG_DEBUG,  "WPS: Building Message M6");

	plain = FUNC1(200);
	if (plain == NULL)
		return NULL;

	msg = FUNC1(1000);
	if (msg == NULL) {
		FUNC2(plain);
		return NULL;
	}

	if (FUNC9(msg) ||
	    FUNC7(msg, WPS_M6) ||
	    FUNC5(wps, msg) ||
	    FUNC8(wps, plain) ||
	    FUNC6(wps, plain) ||
	    FUNC4(wps, msg, plain) ||
	    FUNC10(msg, 0, NULL, 0) ||
	    FUNC3(wps, msg)) {
		FUNC2(plain);
		FUNC2(msg);
		return NULL;
	}
	FUNC2(plain);

	wps->wps_pin_revealed = 1;
	wps->state = RECV_M7;
	return msg;
}