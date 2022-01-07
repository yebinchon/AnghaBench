
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; void* error_indication; void* config_error; } ;
union wps_event_data {TYPE_1__ fail; } ;
typedef void* u16 ;
struct wps_context {int cb_ctx; int (* event_cb ) (int ,int ,union wps_event_data*) ;} ;
typedef enum wps_msg_type { ____Placeholder_wps_msg_type } wps_msg_type ;


 int WPS_EV_FAIL ;
 int os_free (union wps_event_data*) ;
 int os_memset (union wps_event_data*,int ,int) ;
 scalar_t__ os_zalloc (int) ;
 int stub1 (int ,int ,union wps_event_data*) ;

void wps_fail_event(struct wps_context *wps, enum wps_msg_type msg,
      u16 config_error, u16 error_indication)
{
 union wps_event_data *data;

        data = (union wps_event_data *)os_zalloc(sizeof(union wps_event_data));
 if (data == ((void*)0))
  return;

 if (wps->event_cb == ((void*)0)) {
  os_free(data);
  return;
 }

 os_memset(data, 0, sizeof(union wps_event_data));
 data->fail.msg = msg;
 data->fail.config_error = config_error;
 data->fail.error_indication = error_indication;
 wps->event_cb(wps->cb_ctx, WPS_EV_FAIL, data);
 os_free(data);
}
