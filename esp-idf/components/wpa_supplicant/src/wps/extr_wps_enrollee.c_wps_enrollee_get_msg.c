
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_data {int state; int last_msg; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
struct TYPE_2__ {int ap; } ;


 int MSG_DEBUG ;

 int RECV_M2 ;






 int WSC_ACK ;
 int WSC_Done ;
 int WSC_MSG ;
 int WSC_NACK ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_dup (struct wpabuf*) ;
 int wpabuf_free (int ) ;
 struct wpabuf* wps_build_m1 (struct wps_data*) ;
 struct wpabuf* wps_build_m3 (struct wps_data*) ;
 struct wpabuf* wps_build_m5 (struct wps_data*) ;
 struct wpabuf* wps_build_m7 (struct wps_data*) ;
 struct wpabuf* wps_build_wsc_ack (struct wps_data*) ;
 struct wpabuf* wps_build_wsc_done (struct wps_data*) ;
 struct wpabuf* wps_build_wsc_nack (struct wps_data*) ;

struct wpabuf * wps_enrollee_get_msg(struct wps_data *wps,
         enum wsc_op_code *op_code)
{
 struct wpabuf *msg;

 switch (wps->state) {
 case 133:
  msg = wps_build_m1(wps);
  *op_code = WSC_MSG;
  break;
 case 132:
  msg = wps_build_m3(wps);
  *op_code = WSC_MSG;
  break;
 case 131:
  msg = wps_build_m5(wps);
  *op_code = WSC_MSG;
  break;
 case 130:
  msg = wps_build_m7(wps);
  *op_code = WSC_MSG;
  break;
 case 134:
  if (wps->wps->ap) {
   msg = wps_build_wsc_nack(wps);
   *op_code = WSC_NACK;
   break;
  }
  msg = wps_build_wsc_ack(wps);
  *op_code = WSC_ACK;
  if (msg) {

   wps->state = RECV_M2;
  }
  break;
 case 129:
  msg = wps_build_wsc_nack(wps);
  *op_code = WSC_NACK;
  break;
 case 128:
  msg = wps_build_wsc_done(wps);
  *op_code = WSC_Done;
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS: Unsupported state %d for building "
      "a message", wps->state);
  msg = ((void*)0);
  break;
 }

 if (*op_code == WSC_MSG && msg) {


  wpabuf_free(wps->last_msg);
  wps->last_msg = wpabuf_dup(msg);
 }

 return msg;
}
