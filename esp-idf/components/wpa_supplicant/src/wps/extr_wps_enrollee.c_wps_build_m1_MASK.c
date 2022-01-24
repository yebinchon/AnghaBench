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
typedef  int u16 ;
struct wps_data {scalar_t__ dev_password_len; int /*<<< orphan*/  state; TYPE_1__* wps; int /*<<< orphan*/  dev_pw_id; int /*<<< orphan*/  uuid_e; int /*<<< orphan*/  pbc_in_m1; int /*<<< orphan*/  nonce_e; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int config_methods; int /*<<< orphan*/  dev; scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M2 ; 
 int /*<<< orphan*/  WPS_CALC_KEY_NO_CALC ; 
 int /*<<< orphan*/  WPS_CFG_NO_ERROR ; 
 int WPS_CONFIG_DISPLAY ; 
 int WPS_CONFIG_PHY_PUSHBUTTON ; 
 int WPS_CONFIG_PUSHBUTTON ; 
 int WPS_CONFIG_VIRT_PUSHBUTTON ; 
 int /*<<< orphan*/  WPS_M1 ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wpabuf*,int) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC13 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC14 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC15 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC19 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC21 (struct wpabuf*) ; 
 scalar_t__ FUNC22 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct wps_data*,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC24(struct wps_data *wps)
{
	struct wpabuf *msg;
	u16 config_methods;

	if (FUNC0(wps->nonce_e, WPS_NONCE_LEN) < 0)
		return NULL;
	FUNC1(MSG_DEBUG, "WPS: Enrollee Nonce",
		    wps->nonce_e, WPS_NONCE_LEN);

	FUNC2(MSG_DEBUG,  "WPS: Building Message M1");
	msg = FUNC3(1000);
	if (msg == NULL)
		return NULL;

	config_methods = wps->wps->config_methods;
	if (wps->wps->ap && !wps->pbc_in_m1 &&
	    (wps->dev_password_len != 0 ||
	     (config_methods & WPS_CONFIG_DISPLAY))) {
		/*
		 * These are the methods that the AP supports as an Enrollee
		 * for adding external Registrars, so remove PushButton.
		 *
		 * As a workaround for Windows 7 mechanism for probing WPS
		 * capabilities from M1, leave PushButton option if no PIN
		 * method is available or if WPS configuration enables PBC
		 * workaround.
		 */
		config_methods &= ~WPS_CONFIG_PUSHBUTTON;
#ifdef CONFIG_WPS2
		config_methods &= ~(WPS_CONFIG_VIRT_PUSHBUTTON |
				    WPS_CONFIG_PHY_PUSHBUTTON);
#endif /* CONFIG_WPS2 */
	}

	if (FUNC21(msg) ||
	    FUNC15(msg, WPS_M1) ||
	    FUNC19(msg, wps->uuid_e) ||
	    FUNC14(wps, msg) ||
	    FUNC13(wps, msg) ||
	    FUNC17(wps, msg, WPS_CALC_KEY_NO_CALC) ||
	    FUNC6(wps, msg) ||
	    FUNC12(wps, msg) ||
	    FUNC9(wps, msg) ||
	    FUNC8(msg, config_methods) ||
	    FUNC23(wps, msg) ||
	    FUNC11(&wps->wps->dev, msg) ||
	    FUNC18(&wps->wps->dev, msg) ||
	    FUNC5(wps, msg) ||
	    FUNC10(msg, wps->dev_pw_id) ||
	    FUNC7(msg, WPS_CFG_NO_ERROR) ||
	    FUNC16(&wps->wps->dev, msg) ||
	    FUNC22(msg, 0, NULL, 0) ||
	    FUNC20(&wps->wps->dev, msg)) {
		FUNC4(msg);
		return NULL;
	}

	wps->state = RECV_M2;
	return msg;
}