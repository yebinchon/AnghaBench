
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_3__ {int connectable_mode; int page_scan_period; int page_scan_window; } ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;


 int BTM_TRACE_API (char*) ;
 TYPE_2__ btm_cb ;

UINT16 BTM_ReadConnectability (UINT16 *p_window, UINT16 *p_interval)
{
    BTM_TRACE_API ("BTM_ReadConnectability\n");
    if (p_window) {
        *p_window = btm_cb.btm_inq_vars.page_scan_window;
    }

    if (p_interval) {
        *p_interval = btm_cb.btm_inq_vars.page_scan_period;
    }

    return (btm_cb.btm_inq_vars.connectable_mode);
}
