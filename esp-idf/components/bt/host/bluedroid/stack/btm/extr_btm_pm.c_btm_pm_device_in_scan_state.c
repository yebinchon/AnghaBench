
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inq_active; } ;
struct TYPE_4__ {scalar_t__ busy_level; TYPE_1__ btm_inq_vars; int page_queue; scalar_t__ is_paging; } ;
typedef int BOOLEAN ;


 int BTM_BLE_INQ_ACTIVE_MASK ;
 scalar_t__ BTM_BL_PAGING_STARTED ;
 int BTM_BR_INQ_ACTIVE_MASK ;
 int BTM_TRACE_DEBUG (char*) ;
 int FALSE ;
 int TRUE ;
 TYPE_2__ btm_cb ;
 int fixed_queue_is_empty (int ) ;

BOOLEAN btm_pm_device_in_scan_state(void)
{



    if (btm_cb.is_paging || (!fixed_queue_is_empty(btm_cb.page_queue)) ||
            BTM_BL_PAGING_STARTED == btm_cb.busy_level) {
        BTM_TRACE_DEBUG("btm_pm_device_in_scan_state- paging");
        return TRUE;
    }


    if ((btm_cb.btm_inq_vars.inq_active & (BTM_BR_INQ_ACTIVE_MASK | BTM_BLE_INQ_ACTIVE_MASK)) != 0) {
        BTM_TRACE_DEBUG("btm_pm_device_in_scan_state- Inq active");
        return TRUE;
    }

    return FALSE;
}
