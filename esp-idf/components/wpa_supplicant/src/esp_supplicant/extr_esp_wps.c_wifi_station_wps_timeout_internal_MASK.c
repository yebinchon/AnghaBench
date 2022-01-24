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
struct wps_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  WIFI_EVENT_STA_WPS_ER_TIMEOUT ; 
 int /*<<< orphan*/  WPS_STATUS_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
    struct wps_sm *sm = gWpsSm;

    if (!sm) {
        return;
    }

    FUNC1();

    FUNC2(WPS_STATUS_DISABLE);

    FUNC0(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_TIMEOUT, 0, 0, portMAX_DELAY);
}