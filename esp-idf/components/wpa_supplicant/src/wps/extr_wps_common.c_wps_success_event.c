
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_context {int cb_ctx; int (* event_cb ) (int ,int ,int *) ;} ;


 int WPS_EV_SUCCESS ;
 int stub1 (int ,int ,int *) ;

void wps_success_event(struct wps_context *wps)
{
 if (wps->event_cb == ((void*)0))
  return;

 wps->event_cb(wps->cb_ctx, WPS_EV_SUCCESS, ((void*)0));
}
