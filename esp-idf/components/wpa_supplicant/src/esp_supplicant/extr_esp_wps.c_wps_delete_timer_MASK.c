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
struct wps_sm {int /*<<< orphan*/  wps_eapol_start_timer; int /*<<< orphan*/  wps_scan_timer; int /*<<< orphan*/  wps_msg_timeout_timer; int /*<<< orphan*/  wps_timeout_timer; int /*<<< orphan*/  wps_success_cb_timer; } ;

/* Variables and functions */
 int ESP_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 

int FUNC3(void)
{
    struct wps_sm *sm = gWpsSm;

    if (!sm) {
        return ESP_OK;
    }

    FUNC1(&sm->wps_success_cb_timer);
    FUNC1(&sm->wps_timeout_timer);
    FUNC1(&sm->wps_msg_timeout_timer);
    FUNC1(&sm->wps_scan_timer);
    FUNC1(&sm->wps_eapol_start_timer);
    FUNC2(&sm->wps_success_cb_timer);
    FUNC2(&sm->wps_timeout_timer);
    FUNC2(&sm->wps_msg_timeout_timer);
    FUNC2(&sm->wps_scan_timer);
    FUNC2(&sm->wps_eapol_start_timer);
    FUNC0();
    return ESP_OK;
}