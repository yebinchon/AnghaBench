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
struct wps_data {scalar_t__ registrar; } ;
struct wpabuf {int dummy; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int FUNC0 (struct wps_data*,int,struct wpabuf const*) ; 
 int FUNC1 (struct wps_data*,int,struct wpabuf const*) ; 

enum wps_process_res FUNC2(struct wps_data *wps,
                     enum wsc_op_code op_code,
                     const struct wpabuf *msg)
{
    if (wps->registrar)
        return FUNC1(wps, op_code, msg);
    else
        return FUNC0(wps, op_code, msg);
}