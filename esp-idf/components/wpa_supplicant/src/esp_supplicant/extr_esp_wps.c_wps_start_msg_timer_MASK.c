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
typedef  int uint32_t ;
struct wps_sm {int /*<<< orphan*/  wps_msg_timeout_timer; TYPE_1__* wps; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M2 ; 
 scalar_t__ WPS_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(void)
{
    struct wps_sm *sm = gWpsSm;
    uint32_t msg_timeout;
    int ret = ESP_FAIL;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    if (sm->wps->state == WPS_FINISHED) {
        msg_timeout = 100;
        FUNC2(MSG_DEBUG, "start msg timer WPS_FINISHED %d ms", msg_timeout);
        FUNC1(&sm->wps_msg_timeout_timer);
        FUNC0(&sm->wps_msg_timeout_timer, msg_timeout, 0);
        ret = 0;
    } else if (sm->wps->state == RECV_M2) {
        msg_timeout = 5000;
        FUNC2(MSG_DEBUG, "start msg timer RECV_M2 %d ms", msg_timeout);
        FUNC1(&sm->wps_msg_timeout_timer);
        FUNC0(&sm->wps_msg_timeout_timer, msg_timeout, 0);
        ret = 0;
    }
    return ret;
}