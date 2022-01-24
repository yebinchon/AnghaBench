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
struct wps_sm {int /*<<< orphan*/ * wps; struct wps_sm* wps_ctx; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  WIFI_APPIE_WPS_AR ; 
 int /*<<< orphan*/  WIFI_APPIE_WPS_PR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC2 (struct wps_sm*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(void)
{
    struct wps_sm *sm = gWpsSm;

    if (gWpsSm == NULL) {
        return ESP_FAIL;
    }

    FUNC1(WIFI_APPIE_WPS_PR);
    FUNC1(WIFI_APPIE_WPS_AR);
    FUNC0(NULL);

    if (sm->dev) {
        FUNC4(sm->dev);
        sm->dev = NULL;
    }
    if (sm->wps_ctx) {
        FUNC2(sm->wps_ctx);
        sm->wps_ctx = NULL;
    }
    if (sm->wps) {
        FUNC3();
        sm->wps = NULL;
    }
    if (sm) {
        FUNC2(gWpsSm);
        gWpsSm = NULL;
    }

    return ESP_OK;
}