
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_sm {int wps_eapol_start_timer; } ;
struct wps_data {int state; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;


 int MSG_DEBUG ;
 int SEND_M1 ;
 int WPS_CONTINUE ;
 int ets_timer_disarm (int *) ;
 struct wps_sm* gWpsSm ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_start(struct wps_data *wps,
      const struct wpabuf *msg)
{
 struct wps_sm *sm = gWpsSm;
 enum wps_process_res ret = WPS_CONTINUE;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_START");
 ets_timer_disarm(&sm->wps_eapol_start_timer);
        wps->state = SEND_M1;
 return ret;
}
