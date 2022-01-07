
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
struct TYPE_4__ {scalar_t__ inq_scan_window; scalar_t__ inq_scan_period; int connectable_mode; scalar_t__ discoverable_mode; } ;
struct TYPE_6__ {TYPE_1__ btm_inq_vars; } ;
struct TYPE_5__ {int (* get_is_ready ) () ;} ;
typedef int LAP ;
typedef int DEV_CLASS ;
typedef int BOOLEAN ;


 int BTM_COD_MAJOR_CLASS (int ,int *) ;
 int BTM_COD_MINOR_CLASS (int ,int *) ;
 int BTM_COD_SERVICE_CLASS (scalar_t__,int *) ;
 scalar_t__ BTM_COD_SERVICE_LMTD_DISCOVER ;
 int BTM_CONNECTABLE_MASK ;
 scalar_t__ BTM_DEFAULT_DISC_INTERVAL ;
 scalar_t__ BTM_DEFAULT_DISC_WINDOW ;
 int BTM_DEV_RESET ;
 scalar_t__ BTM_DISCOVERABLE_MASK ;
 int BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_LIMITED_DISCOVERABLE ;
 scalar_t__ BTM_MAX_DISCOVERABLE ;
 scalar_t__ BTM_NON_DISCOVERABLE ;
 int BTM_NO_RESOURCES ;
 int * BTM_ReadDeviceClass () ;
 int BTM_SUCCESS ;
 int BTM_SetDeviceClass (int ) ;
 int BTM_TRACE_API (char*,...) ;
 int FALSE ;
 int FIELDS_TO_COD (int ,int ,int ,scalar_t__) ;
 int HCI_INQUIRY_SCAN_ENABLED ;
 scalar_t__ HCI_MAX_INQUIRYSCAN_INTERVAL ;
 scalar_t__ HCI_MAX_INQUIRYSCAN_WINDOW ;
 scalar_t__ HCI_MIN_INQUIRYSCAN_INTERVAL ;
 scalar_t__ HCI_MIN_INQUIRYSCAN_WINDOW ;
 int HCI_PAGE_SCAN_ENABLED ;
 int LAP_LEN ;
 int TRUE ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_write_cur_iac_lap (int,int * const) ;
 scalar_t__ btsnd_hcic_write_inqscan_cfg (scalar_t__,scalar_t__) ;
 scalar_t__ btsnd_hcic_write_scan_enable (int ) ;
 TYPE_2__* controller_get_interface () ;
 int general_inq_lap ;
 int limited_inq_lap ;
 int memcpy (int ,int ,int ) ;
 int stub1 () ;

tBTM_STATUS BTM_SetDiscoverability (UINT16 inq_mode, UINT16 window, UINT16 interval)
{
    UINT8 scan_mode = 0;
    UINT16 service_class;
    UINT8 *p_cod;
    UINT8 major, minor;
    DEV_CLASS cod;
    LAP temp_lap[2];
    BOOLEAN is_limited;
    BOOLEAN cod_limited;

    BTM_TRACE_API ("BTM_SetDiscoverability\n");


    if (inq_mode > BTM_MAX_DISCOVERABLE) {
        return (BTM_ILLEGAL_VALUE);
    }


    if (!controller_get_interface()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }


    if (!window) {
        window = BTM_DEFAULT_DISC_WINDOW;
    }

    if (!interval) {
        interval = BTM_DEFAULT_DISC_INTERVAL;
    }

    BTM_TRACE_API ("BTM_SetDiscoverability: mode %d [NonDisc-0, Lim-1, Gen-2], window 0x%04x, interval 0x%04x\n",
                   inq_mode, window, interval);



    if (inq_mode != BTM_NON_DISCOVERABLE) {

        if (window < HCI_MIN_INQUIRYSCAN_WINDOW ||
                window > HCI_MAX_INQUIRYSCAN_WINDOW ||
                interval < HCI_MIN_INQUIRYSCAN_INTERVAL ||
                interval > HCI_MAX_INQUIRYSCAN_INTERVAL ||
                window > interval) {
            return (BTM_ILLEGAL_VALUE);
        }
    }


    if (inq_mode != BTM_NON_DISCOVERABLE) {
        if (inq_mode & BTM_LIMITED_DISCOVERABLE) {

            memcpy (temp_lap[0], limited_inq_lap, LAP_LEN);
            memcpy (temp_lap[1], general_inq_lap, LAP_LEN);

            if (!btsnd_hcic_write_cur_iac_lap (2, (LAP * const) temp_lap)) {
                return (BTM_NO_RESOURCES);
            }
        } else {
            if (!btsnd_hcic_write_cur_iac_lap (1, (LAP * const) &general_inq_lap)) {
                return (BTM_NO_RESOURCES);
            }
        }

        scan_mode |= HCI_INQUIRY_SCAN_ENABLED;
    }


    if ((window != btm_cb.btm_inq_vars.inq_scan_window) ||
            (interval != btm_cb.btm_inq_vars.inq_scan_period)) {
        if (btsnd_hcic_write_inqscan_cfg (interval, window)) {
            btm_cb.btm_inq_vars.inq_scan_window = window;
            btm_cb.btm_inq_vars.inq_scan_period = interval;
        } else {
            return (BTM_NO_RESOURCES);
        }
    }

    if (btm_cb.btm_inq_vars.connectable_mode & BTM_CONNECTABLE_MASK) {
        scan_mode |= HCI_PAGE_SCAN_ENABLED;
    }

    if (btsnd_hcic_write_scan_enable (scan_mode)) {
        btm_cb.btm_inq_vars.discoverable_mode &= (~BTM_DISCOVERABLE_MASK);
        btm_cb.btm_inq_vars.discoverable_mode |= inq_mode;
    } else {
        return (BTM_NO_RESOURCES);
    }


    p_cod = BTM_ReadDeviceClass();
    BTM_COD_SERVICE_CLASS(service_class, p_cod);
    is_limited = (inq_mode & BTM_LIMITED_DISCOVERABLE) ? TRUE : FALSE;
    cod_limited = (service_class & BTM_COD_SERVICE_LMTD_DISCOVER) ? TRUE : FALSE;
    if (is_limited ^ cod_limited) {
        BTM_COD_MINOR_CLASS(minor, p_cod );
        BTM_COD_MAJOR_CLASS(major, p_cod );
        if (is_limited) {
            service_class |= BTM_COD_SERVICE_LMTD_DISCOVER;
        } else {
            service_class &= ~BTM_COD_SERVICE_LMTD_DISCOVER;
        }

        FIELDS_TO_COD(cod, minor, major, service_class);
        (void) BTM_SetDeviceClass (cod);
    }

    return (BTM_SUCCESS);
}
