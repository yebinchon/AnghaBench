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
struct wps_data {int int_reg; int /*<<< orphan*/  state; TYPE_1__* wps; int /*<<< orphan*/  dev_pw_id; int /*<<< orphan*/  uuid_r; int /*<<< orphan*/  nonce_r; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M3 ; 
 int /*<<< orphan*/  WPS_CALC_KEY_NORMAL ; 
 int /*<<< orphan*/  WPS_CFG_NO_ERROR ; 
 int /*<<< orphan*/  WPS_M2 ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC13 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC14 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC15 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC20 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC21 (struct wpabuf*) ; 
 scalar_t__ FUNC22 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct wps_data*) ; 

__attribute__((used)) static struct wpabuf * FUNC24(struct wps_data *wps)
{
	struct wpabuf *msg;

	if (FUNC0(wps->nonce_r, WPS_NONCE_LEN) < 0)
		return NULL;
	FUNC1(MSG_DEBUG, "WPS: Registrar Nonce",
		    wps->nonce_r, WPS_NONCE_LEN);
	FUNC1(MSG_DEBUG, "WPS: UUID-R", wps->uuid_r, WPS_UUID_LEN);

	FUNC2(MSG_DEBUG,  "WPS: Building Message M2");
	msg = FUNC3(1000);
	if (msg == NULL)
		return NULL;

	if (FUNC21(msg) ||
	    FUNC15(msg, WPS_M2) ||
	    FUNC14(wps, msg) ||
	    FUNC18(wps, msg) ||
	    FUNC20(wps, msg) ||
	    FUNC17(wps, msg, WPS_CALC_KEY_NORMAL) ||
	    FUNC23(wps) ||
	    FUNC6(wps, msg) ||
	    FUNC13(wps, msg) ||
	    FUNC10(wps, msg) ||
	    FUNC9(wps->wps->registrar, msg) ||
	    FUNC12(&wps->wps->dev, msg) ||
	    FUNC19(&wps->wps->dev, msg) ||
	    FUNC5(wps, msg) ||
	    FUNC8(msg, WPS_CFG_NO_ERROR) ||
	    FUNC11(msg, wps->dev_pw_id) ||
	    FUNC16(&wps->wps->dev, msg) ||
	    FUNC22(msg, 0, NULL, 0) ||
	    FUNC7(wps, msg)) {
		FUNC4(msg);
		return NULL;
	}

	wps->int_reg = 1;
	wps->state = RECV_M3;
	return msg;
}