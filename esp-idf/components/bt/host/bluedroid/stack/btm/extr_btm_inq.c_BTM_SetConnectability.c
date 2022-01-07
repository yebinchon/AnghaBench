
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_4__ {scalar_t__ page_scan_window; scalar_t__ page_scan_period; int discoverable_mode; scalar_t__ connectable_mode; } ;
typedef TYPE_1__ tBTM_INQUIRY_VAR_ST ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {TYPE_1__ btm_inq_vars; } ;
struct TYPE_5__ {int (* get_is_ready ) () ;} ;


 scalar_t__ BTM_CONNECTABLE ;
 scalar_t__ BTM_CONNECTABLE_MASK ;
 scalar_t__ BTM_DEFAULT_CONN_INTERVAL ;
 scalar_t__ BTM_DEFAULT_CONN_WINDOW ;
 int BTM_DEV_RESET ;
 int BTM_DISCOVERABLE_MASK ;
 int BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_NON_CONNECTABLE ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*,...) ;
 int HCI_INQUIRY_SCAN_ENABLED ;
 scalar_t__ HCI_MAX_PAGESCAN_INTERVAL ;
 scalar_t__ HCI_MAX_PAGESCAN_WINDOW ;
 scalar_t__ HCI_MIN_PAGESCAN_INTERVAL ;
 scalar_t__ HCI_MIN_PAGESCAN_WINDOW ;
 int HCI_PAGE_SCAN_ENABLED ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_write_pagescan_cfg (scalar_t__,scalar_t__) ;
 scalar_t__ btsnd_hcic_write_scan_enable (int ) ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_SetConnectability (UINT16 page_mode, UINT16 window, UINT16 interval)
{
    UINT8 scan_mode = 0;
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;

    BTM_TRACE_API ("BTM_SetConnectability\n");


    if (page_mode != BTM_NON_CONNECTABLE && page_mode != BTM_CONNECTABLE) {
        return (BTM_ILLEGAL_VALUE);
    }


    if (!controller_get_interface()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }


    if (!window) {
        window = BTM_DEFAULT_CONN_WINDOW;
    }

    if (!interval) {
        interval = BTM_DEFAULT_CONN_INTERVAL;
    }

    BTM_TRACE_API ("BTM_SetConnectability: mode %d [NonConn-0, Conn-1], window 0x%04x, interval 0x%04x\n",
                   page_mode, window, interval);



    if (page_mode == BTM_CONNECTABLE) {

        if (window < HCI_MIN_PAGESCAN_WINDOW ||
                window > HCI_MAX_PAGESCAN_WINDOW ||
                interval < HCI_MIN_PAGESCAN_INTERVAL ||
                interval > HCI_MAX_PAGESCAN_INTERVAL ||
                window > interval) {
            return (BTM_ILLEGAL_VALUE);
        }

        scan_mode |= HCI_PAGE_SCAN_ENABLED;
    }

    if ((window != p_inq->page_scan_window) ||
            (interval != p_inq->page_scan_period)) {
        p_inq->page_scan_window = window;
        p_inq->page_scan_period = interval;
        if (!btsnd_hcic_write_pagescan_cfg (interval, window)) {
            return (BTM_NO_RESOURCES);
        }
    }


    if (p_inq->discoverable_mode & BTM_DISCOVERABLE_MASK) {
        scan_mode |= HCI_INQUIRY_SCAN_ENABLED;
    }

    if (btsnd_hcic_write_scan_enable (scan_mode)) {
        p_inq->connectable_mode &= (~BTM_CONNECTABLE_MASK);
        p_inq->connectable_mode |= page_mode;

        return (BTM_SUCCESS);
    }

    return (BTM_NO_RESOURCES);
}
