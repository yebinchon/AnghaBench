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
typedef  int /*<<< orphan*/  uint8_t ;
struct wps_sm {int /*<<< orphan*/  uuid; int /*<<< orphan*/  dev; } ;
struct wpabuf {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_PW_DEFAULT ; 
 int /*<<< orphan*/  DEV_PW_PUSHBUTTON ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WIFI_APPIE_WPS_PR ; 
 int /*<<< orphan*/  WPS_REQ_ENROLLEE ; 
 scalar_t__ WPS_TYPE_PBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void)
{
    struct wpabuf *extra_ie = NULL;
    struct wpabuf *wps_ie;
    struct wps_sm *sm = gWpsSm;

    FUNC1(MSG_DEBUG, "wps build: wps pr");

    if (FUNC8() == WPS_TYPE_PBC) {
        wps_ie = (struct wpabuf *)FUNC7(DEV_PW_PUSHBUTTON,
                 sm->dev,
                 sm->uuid, WPS_REQ_ENROLLEE,
                 0, NULL);
    } else {
        wps_ie = (struct wpabuf *)FUNC7(DEV_PW_DEFAULT,
                 sm->dev,
                 sm->uuid, WPS_REQ_ENROLLEE,
                 0, NULL);
    }

    if (wps_ie) {
        if (FUNC6(&extra_ie, FUNC4(wps_ie)) == 0) {
            FUNC5(extra_ie, wps_ie);
        } else {
            FUNC2(wps_ie);
            return;
        }
        FUNC2(wps_ie);
    }

    FUNC0(WIFI_APPIE_WPS_PR, (uint8_t *)FUNC3(extra_ie), extra_ie->used, 0);
    FUNC2(extra_ie);
}