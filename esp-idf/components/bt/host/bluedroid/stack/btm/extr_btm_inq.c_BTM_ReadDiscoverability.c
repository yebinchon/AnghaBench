
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_3__ {int discoverable_mode; int inq_scan_period; int inq_scan_window; } ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;


 int BTM_TRACE_API (char*) ;
 TYPE_2__ btm_cb ;

UINT16 BTM_ReadDiscoverability (UINT16 *p_window, UINT16 *p_interval)
{
    BTM_TRACE_API ("BTM_ReadDiscoverability\n");
    if (p_window) {
        *p_window = btm_cb.btm_inq_vars.inq_scan_window;
    }

    if (p_interval) {
        *p_interval = btm_cb.btm_inq_vars.inq_scan_period;
    }

    return (btm_cb.btm_inq_vars.discoverable_mode);
}
