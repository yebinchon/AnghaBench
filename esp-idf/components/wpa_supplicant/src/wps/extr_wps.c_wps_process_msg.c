
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {scalar_t__ registrar; } ;
struct wpabuf {int dummy; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;


 int wps_enrollee_process_msg (struct wps_data*,int,struct wpabuf const*) ;
 int wps_registrar_process_msg (struct wps_data*,int,struct wpabuf const*) ;

enum wps_process_res wps_process_msg(struct wps_data *wps,
                     enum wsc_op_code op_code,
                     const struct wpabuf *msg)
{
    if (wps->registrar)
        return wps_registrar_process_msg(wps, op_code, msg);
    else
        return wps_enrollee_process_msg(wps, op_code, msg);
}
