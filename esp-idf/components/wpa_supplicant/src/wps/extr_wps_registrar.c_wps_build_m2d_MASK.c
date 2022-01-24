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
typedef  scalar_t__ u16 ;
struct wps_data {scalar_t__ config_error; int /*<<< orphan*/  state; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  registrar; scalar_t__ ap_setup_locked; scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M2D_ACK ; 
 scalar_t__ WPS_CFG_NO_ERROR ; 
 scalar_t__ WPS_CFG_SETUP_LOCKED ; 
 int /*<<< orphan*/  WPS_M2D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wpabuf*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC13 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC15 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC16 (struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC18(struct wps_data *wps)
{
	struct wpabuf *msg;
	u16 err = wps->config_error;

	FUNC0(MSG_DEBUG,  "WPS: Building Message M2D");
	msg = FUNC1(1000);
	if (msg == NULL)
		return NULL;

	if (wps->wps->ap && wps->wps->ap_setup_locked &&
	    err == WPS_CFG_NO_ERROR)
		err = WPS_CFG_SETUP_LOCKED;

	if (FUNC16(msg) ||
	    FUNC11(msg, WPS_M2D) ||
	    FUNC10(wps, msg) ||
	    FUNC13(wps, msg) ||
	    FUNC15(wps, msg) ||
	    FUNC4(wps, msg) ||
	    FUNC9(wps, msg) ||
	    FUNC7(wps, msg) ||
	    FUNC6(wps->wps->registrar, msg) ||
	    FUNC8(&wps->wps->dev, msg) ||
	    FUNC14(&wps->wps->dev, msg) ||
	    FUNC3(wps, msg) ||
	    FUNC5(msg, err) ||
	    FUNC12(&wps->wps->dev, msg) ||
	    FUNC17(msg, 0, NULL, 0)) {
		FUNC2(msg);
		return NULL;
	}

	wps->state = RECV_M2D_ACK;
	return msg;
}