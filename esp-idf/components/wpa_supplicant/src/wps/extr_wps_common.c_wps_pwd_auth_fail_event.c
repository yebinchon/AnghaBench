
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enrollee; int part; } ;
union wps_event_data {TYPE_1__ pwd_auth_fail; } ;
struct wps_context {int cb_ctx; int (* event_cb ) (int ,int ,union wps_event_data*) ;} ;


 int WPS_EV_PWD_AUTH_FAIL ;
 int os_free (union wps_event_data*) ;
 int os_memset (union wps_event_data*,int ,int) ;
 scalar_t__ os_zalloc (int) ;
 int stub1 (int ,int ,union wps_event_data*) ;

void wps_pwd_auth_fail_event(struct wps_context *wps, int enrollee, int part)
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
 data->pwd_auth_fail.enrollee = enrollee;
 data->pwd_auth_fail.part = part;
 wps->event_cb(wps->cb_ctx, WPS_EV_PWD_AUTH_FAIL, data);
 os_free(data);
}
