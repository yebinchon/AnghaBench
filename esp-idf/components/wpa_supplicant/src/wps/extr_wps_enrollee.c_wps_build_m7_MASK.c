#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wps_data {int /*<<< orphan*/  state; int /*<<< orphan*/  uuid_r; int /*<<< orphan*/  peer_dev; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ registrar; scalar_t__ ap; scalar_t__ ap_settings_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M8 ; 
 int /*<<< orphan*/  WPS_M7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC13(struct wps_data *wps)
{
	struct wpabuf *msg, *plain;

	FUNC0(MSG_DEBUG,  "WPS: Building Message M7");

	plain = FUNC1(500 + wps->wps->ap_settings_len);
	if (plain == NULL)
		return NULL;

	msg = FUNC1(1000 + wps->wps->ap_settings_len);
	if (msg == NULL) {
		FUNC2(plain);
		return NULL;
	}

	if (FUNC10(msg) ||
	    FUNC8(msg, WPS_M7) ||
	    FUNC9(wps, msg) ||
	    FUNC5(wps, plain) ||
	    (wps->wps->ap && FUNC3(wps, plain)) ||
	    FUNC7(wps, plain) ||
	    FUNC6(wps, msg, plain) ||
	    FUNC11(msg, 0, NULL, 0) ||
	    FUNC4(wps, msg)) {
		FUNC2(plain);
		FUNC2(msg);
		return NULL;
	}
	FUNC2(plain);

	if (wps->wps->ap && wps->wps->registrar) {
		/*
		 * If the Registrar is only learning our current configuration,
		 * it may not continue protocol run to successful completion.
		 * Store information here to make sure it remains available.
		 */
		FUNC12(wps->wps->registrar, &wps->peer_dev,
				 wps->uuid_r);
	}

	wps->state = RECV_M8;
	return msg;
}