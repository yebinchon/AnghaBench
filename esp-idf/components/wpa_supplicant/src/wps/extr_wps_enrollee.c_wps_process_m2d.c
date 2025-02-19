
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_event_m2d {void* dev_password_id; void* config_error; int primary_dev_type; int dev_name_len; int dev_name; int serial_number_len; int serial_number; int model_number_len; int model_number; int model_name_len; int model_name; int manufacturer_len; int manufacturer; void* config_methods; } ;
union wps_event_data {struct wps_event_m2d m2d; } ;
struct wps_parse_attr {scalar_t__ dev_password_id; scalar_t__ config_error; int primary_dev_type; int dev_name_len; int dev_name; int serial_number_len; int serial_number; int model_number_len; int model_number; int model_name_len; int model_name; int manufacturer_len; int manufacturer; scalar_t__ config_methods; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
typedef int data ;
struct TYPE_2__ {int cb_ctx; int (* event_cb ) (int ,int ,union wps_event_data*) ;} ;


 int MSG_DEBUG ;
 scalar_t__ RECEIVED_M2D ;
 scalar_t__ RECV_M2 ;
 scalar_t__ SEND_WSC_NACK ;
 void* WPA_GET_BE16 (scalar_t__) ;
 int WPS_CONTINUE ;
 int WPS_EV_M2D ;
 int os_memset (union wps_event_data*,int ,int) ;
 int stub1 (int ,int ,union wps_event_data*) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static enum wps_process_res wps_process_m2d(struct wps_data *wps,
         struct wps_parse_attr *attr)
{
 wpa_printf(MSG_DEBUG, "WPS: Received M2D");

 if (wps->state != RECV_M2) {
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving M2D", wps->state);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Manufacturer",
     attr->manufacturer, attr->manufacturer_len);
 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Model Name",
     attr->model_name, attr->model_name_len);
 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Model Number",
     attr->model_number, attr->model_number_len);
 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Serial Number",
     attr->serial_number, attr->serial_number_len);
 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Device Name",
     attr->dev_name, attr->dev_name_len);

 if (wps->wps->event_cb) {
  union wps_event_data data;
  struct wps_event_m2d *m2d = &data.m2d;
  os_memset(&data, 0, sizeof(data));
  if (attr->config_methods)
   m2d->config_methods =
    WPA_GET_BE16(attr->config_methods);
  m2d->manufacturer = attr->manufacturer;
  m2d->manufacturer_len = attr->manufacturer_len;
  m2d->model_name = attr->model_name;
  m2d->model_name_len = attr->model_name_len;
  m2d->model_number = attr->model_number;
  m2d->model_number_len = attr->model_number_len;
  m2d->serial_number = attr->serial_number;
  m2d->serial_number_len = attr->serial_number_len;
  m2d->dev_name = attr->dev_name;
  m2d->dev_name_len = attr->dev_name_len;
  m2d->primary_dev_type = attr->primary_dev_type;
  if (attr->config_error)
   m2d->config_error =
    WPA_GET_BE16(attr->config_error);
  if (attr->dev_password_id)
   m2d->dev_password_id =
    WPA_GET_BE16(attr->dev_password_id);
  wps->wps->event_cb(wps->wps->cb_ctx, WPS_EV_M2D, &data);
 }

 wps->state = RECEIVED_M2D;
 return WPS_CONTINUE;
}
