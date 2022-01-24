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
struct wps_data {int /*<<< orphan*/  state; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_ACK ; 
 int /*<<< orphan*/  WPS_FINISHED ; 
 int /*<<< orphan*/  WPS_WSC_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct wps_data *wps)
{
	struct wpabuf *msg;

	FUNC0(MSG_DEBUG,  "WPS: Building Message WSC_Done");

	msg = FUNC1(1000);
	if (msg == NULL)
		return NULL;

	if (FUNC6(msg) ||
	    FUNC4(msg, WPS_WSC_DONE) ||
	    FUNC3(wps, msg) ||
	    FUNC5(wps, msg) ||
	    FUNC7(msg, 0, NULL, 0)) {
		FUNC2(msg);
		return NULL;
	}

	if (wps->wps->ap)
		wps->state = RECV_ACK;
	else {
		FUNC8(wps->wps);
		wps->state = WPS_FINISHED;
	}
	return msg;
}