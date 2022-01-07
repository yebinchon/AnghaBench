
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wps_sm {int wps_msg_timeout_timer; TYPE_1__* wps; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int ESP_FAIL ;
 int MSG_DEBUG ;
 scalar_t__ RECV_M2 ;
 scalar_t__ WPS_FINISHED ;
 int ets_timer_arm (int *,int,int ) ;
 int ets_timer_disarm (int *) ;
 struct wps_sm* gWpsSm ;
 int wpa_printf (int ,char*,int) ;

int wps_start_msg_timer(void)
{
    struct wps_sm *sm = gWpsSm;
    uint32_t msg_timeout;
    int ret = ESP_FAIL;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    if (sm->wps->state == WPS_FINISHED) {
        msg_timeout = 100;
        wpa_printf(MSG_DEBUG, "start msg timer WPS_FINISHED %d ms", msg_timeout);
        ets_timer_disarm(&sm->wps_msg_timeout_timer);
        ets_timer_arm(&sm->wps_msg_timeout_timer, msg_timeout, 0);
        ret = 0;
    } else if (sm->wps->state == RECV_M2) {
        msg_timeout = 5000;
        wpa_printf(MSG_DEBUG, "start msg timer RECV_M2 %d ms", msg_timeout);
        ets_timer_disarm(&sm->wps_msg_timeout_timer);
        ets_timer_arm(&sm->wps_msg_timeout_timer, msg_timeout, 0);
        ret = 0;
    }
    return ret;
}
