#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_4__ {scalar_t__ inq_scan_window; scalar_t__ inq_scan_period; int connectable_mode; scalar_t__ discoverable_mode; } ;
struct TYPE_6__ {TYPE_1__ btm_inq_vars; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_is_ready ) () ;} ;
typedef  int /*<<< orphan*/  LAP ;
typedef  int /*<<< orphan*/  DEV_CLASS ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ BTM_COD_SERVICE_LMTD_DISCOVER ; 
 int BTM_CONNECTABLE_MASK ; 
 scalar_t__ BTM_DEFAULT_DISC_INTERVAL ; 
 scalar_t__ BTM_DEFAULT_DISC_WINDOW ; 
 int /*<<< orphan*/  BTM_DEV_RESET ; 
 scalar_t__ BTM_DISCOVERABLE_MASK ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_LIMITED_DISCOVERABLE ; 
 scalar_t__ BTM_MAX_DISCOVERABLE ; 
 scalar_t__ BTM_NON_DISCOVERABLE ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_INQUIRY_SCAN_ENABLED ; 
 scalar_t__ HCI_MAX_INQUIRYSCAN_INTERVAL ; 
 scalar_t__ HCI_MAX_INQUIRYSCAN_WINDOW ; 
 scalar_t__ HCI_MIN_INQUIRYSCAN_INTERVAL ; 
 scalar_t__ HCI_MIN_INQUIRYSCAN_WINDOW ; 
 int /*<<< orphan*/  HCI_PAGE_SCAN_ENABLED ; 
 int /*<<< orphan*/  LAP_LEN ; 
 int TRUE ; 
 TYPE_3__ btm_cb ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 () ; 
 int /*<<< orphan*/  general_inq_lap ; 
 int /*<<< orphan*/  limited_inq_lap ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

tBTM_STATUS FUNC13 (UINT16 inq_mode, UINT16 window, UINT16 interval)
{
    UINT8        scan_mode = 0;
    UINT16       service_class;
    UINT8       *p_cod;
    UINT8        major, minor;
    DEV_CLASS    cod;
    LAP          temp_lap[2];
    BOOLEAN      is_limited;
    BOOLEAN      cod_limited;

    FUNC5 ("BTM_SetDiscoverability\n");

    /*** Check mode parameter ***/
    if (inq_mode > BTM_MAX_DISCOVERABLE) {
        return (BTM_ILLEGAL_VALUE);
    }

    /* Make sure the controller is active */
    if (!FUNC10()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }

    /* If the window and/or interval is '0', set to default values */
    if (!window) {
        window = BTM_DEFAULT_DISC_WINDOW;
    }

    if (!interval) {
        interval = BTM_DEFAULT_DISC_INTERVAL;
    }

    FUNC5 ("BTM_SetDiscoverability: mode %d [NonDisc-0, Lim-1, Gen-2], window 0x%04x, interval 0x%04x\n",
                   inq_mode, window, interval);

    /*** Check for valid window and interval parameters ***/
    /*** Only check window and duration if mode is connectable ***/
    if (inq_mode != BTM_NON_DISCOVERABLE) {
        /* window must be less than or equal to interval */
        if (window < HCI_MIN_INQUIRYSCAN_WINDOW     ||
                window > HCI_MAX_INQUIRYSCAN_WINDOW     ||
                interval < HCI_MIN_INQUIRYSCAN_INTERVAL ||
                interval > HCI_MAX_INQUIRYSCAN_INTERVAL ||
                window > interval) {
            return (BTM_ILLEGAL_VALUE);
        }
    }

    /* Set the IAC if needed */
    if (inq_mode != BTM_NON_DISCOVERABLE) {
        if (inq_mode & BTM_LIMITED_DISCOVERABLE) {
            /* Use the GIAC and LIAC codes for limited discoverable mode */
            FUNC11 (temp_lap[0], limited_inq_lap, LAP_LEN);
            FUNC11 (temp_lap[1], general_inq_lap, LAP_LEN);

            if (!FUNC7 (2, (LAP * const) temp_lap)) {
                return (BTM_NO_RESOURCES);    /* Cannot continue */
            }
        } else {
            if (!FUNC7 (1, (LAP * const) &general_inq_lap)) {
                return (BTM_NO_RESOURCES);    /* Cannot continue */
            }
        }

        scan_mode |= HCI_INQUIRY_SCAN_ENABLED;
    }

    /* Send down the inquiry scan window and period if changed */
    if ((window != btm_cb.btm_inq_vars.inq_scan_window) ||
            (interval != btm_cb.btm_inq_vars.inq_scan_period)) {
        if (FUNC8 (interval, window)) {
            btm_cb.btm_inq_vars.inq_scan_window = window;
            btm_cb.btm_inq_vars.inq_scan_period = interval;
        } else {
            return (BTM_NO_RESOURCES);
        }
    }

    if (btm_cb.btm_inq_vars.connectable_mode & BTM_CONNECTABLE_MASK) {
        scan_mode |= HCI_PAGE_SCAN_ENABLED;
    }

    if (FUNC9 (scan_mode)) {
        btm_cb.btm_inq_vars.discoverable_mode &= (~BTM_DISCOVERABLE_MASK);
        btm_cb.btm_inq_vars.discoverable_mode |= inq_mode;
    } else {
        return (BTM_NO_RESOURCES);
    }

    /* Change the service class bit if mode has changed */
    p_cod = FUNC3();
    FUNC2(service_class, p_cod);
    is_limited = (inq_mode & BTM_LIMITED_DISCOVERABLE) ? TRUE : FALSE;
    cod_limited = (service_class & BTM_COD_SERVICE_LMTD_DISCOVER) ? TRUE : FALSE;
    if (is_limited ^ cod_limited) {
        FUNC1(minor, p_cod );
        FUNC0(major, p_cod );
        if (is_limited) {
            service_class |= BTM_COD_SERVICE_LMTD_DISCOVER;
        } else {
            service_class &= ~BTM_COD_SERVICE_LMTD_DISCOVER;
        }

        FUNC6(cod, minor, major, service_class);
        (void) FUNC4 (cod);
    }

    return (BTM_SUCCESS);
}