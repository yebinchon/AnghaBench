
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {scalar_t__ page_scan_type; } ;
struct TYPE_6__ {TYPE_1__ btm_inq_vars; } ;
struct TYPE_5__ {int (* supports_interlaced_inquiry_scan ) () ;} ;


 int BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_IsDeviceUp () ;
 int BTM_MODE_UNSUPPORTED ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_SCAN_TYPE_INTERLACED ;
 scalar_t__ BTM_SCAN_TYPE_STANDARD ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*) ;
 int BTM_WRONG_MODE ;
 TYPE_3__ btm_cb ;
 scalar_t__ btsnd_hcic_write_pagescan_type (int ) ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_SetPageScanType (UINT16 scan_type)
{
    BTM_TRACE_API ("BTM_SetPageScanType\n");
    if (scan_type != BTM_SCAN_TYPE_STANDARD && scan_type != BTM_SCAN_TYPE_INTERLACED) {
        return (BTM_ILLEGAL_VALUE);
    }


    if (!controller_get_interface()->supports_interlaced_inquiry_scan()) {
        return (BTM_MODE_UNSUPPORTED);
    }


    if (scan_type != btm_cb.btm_inq_vars.page_scan_type) {
        if (BTM_IsDeviceUp()) {
            if (btsnd_hcic_write_pagescan_type ((UINT8)scan_type)) {
                btm_cb.btm_inq_vars.page_scan_type = scan_type;
            } else {
                return (BTM_NO_RESOURCES);
            }
        } else {
            return (BTM_WRONG_MODE);
        }
    }
    return (BTM_SUCCESS);
}
