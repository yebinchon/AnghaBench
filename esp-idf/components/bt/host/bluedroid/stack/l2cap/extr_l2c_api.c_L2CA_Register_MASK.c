#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * pL2CA_ConnectInd_Cb; int /*<<< orphan*/  pL2CA_DisconnectInd_Cb; int /*<<< orphan*/  pL2CA_DataInd_Cb; int /*<<< orphan*/  pL2CA_ConfigInd_Cb; int /*<<< orphan*/  pL2CA_ConfigCfm_Cb; } ;
struct TYPE_6__ {int real_psm; TYPE_2__ api; } ;
typedef  TYPE_1__ tL2C_RCB ;
typedef  TYPE_2__ tL2CAP_APPL_INFO ;
typedef  int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int) ; 

UINT16 FUNC5 (UINT16 psm, tL2CAP_APPL_INFO *p_cb_info)
{
    tL2C_RCB    *p_rcb;
    UINT16      vpsm = psm;


    /* Verify that the required callback info has been filled in
    **      Note:  Connection callbacks are required but not checked
    **             for here because it is possible to be only a client
    **             or only a server.
    */
    if ((!p_cb_info->pL2CA_ConfigCfm_Cb)
            || (!p_cb_info->pL2CA_ConfigInd_Cb)
            || (!p_cb_info->pL2CA_DataInd_Cb)
            || (!p_cb_info->pL2CA_DisconnectInd_Cb)) {
        FUNC0 ("L2CAP - no cb registering PSM: 0x%04x", psm);
        return (0);
    }

    /* Verify PSM is valid */
    if (FUNC2(psm)) {
        FUNC0 ("L2CAP - invalid PSM value, PSM: 0x%04x", psm);
        return (0);
    }

    /* Check if this is a registration for an outgoing-only connection to */
    /* a dynamic PSM. If so, allocate a "virtual" PSM for the app to use. */
    if ( (psm >= 0x1001) && (p_cb_info->pL2CA_ConnectInd_Cb == NULL) ) {
        for (vpsm = 0x1002; vpsm < 0x8000; vpsm += 2) {
            if ((p_rcb = FUNC4 (vpsm)) == NULL) {
                break;
            }
        }

        //L2CAP_TRACE_API ("L2CA_Register - Real PSM: 0x%04x  Virtual PSM: 0x%04x", psm, vpsm);
    }

    /* If registration block already there, just overwrite it */
    if ((p_rcb = FUNC4 (vpsm)) == NULL) {
        if ((p_rcb = FUNC3 (vpsm)) == NULL) {
            FUNC1 ("L2CAP - no RCB available, PSM: 0x%04x  vPSM: 0x%04x", psm, vpsm);
            return (0);
        }
    }

    p_rcb->api      = *p_cb_info;
    p_rcb->real_psm = psm;

    return (vpsm);
}