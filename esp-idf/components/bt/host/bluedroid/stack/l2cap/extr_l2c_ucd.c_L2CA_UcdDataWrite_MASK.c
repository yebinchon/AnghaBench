#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ state; } ;
struct TYPE_15__ {TYPE_1__ ucd; } ;
typedef  TYPE_2__ tL2C_RCB ;
struct TYPE_16__ {scalar_t__ ucd_mtu; int /*<<< orphan*/  ucd_out_sec_pending_q; int /*<<< orphan*/  handle; } ;
typedef  TYPE_3__ tL2C_LCB ;
struct TYPE_17__ {scalar_t__ cong_sent; int /*<<< orphan*/  buff_quota; int /*<<< orphan*/  xmit_hold_q; } ;
typedef  TYPE_4__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_18__ {scalar_t__ offset; scalar_t__ len; int /*<<< orphan*/  layer_specific; } ;
typedef  TYPE_5__ BT_HDR ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  L2CAP_DW_CONGESTED ; 
 int /*<<< orphan*/  L2CAP_DW_FAILED ; 
 int /*<<< orphan*/  L2CAP_DW_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ L2CAP_UCD_OVERHEAD ; 
 int /*<<< orphan*/  L2CEVT_L2CA_DATA_WRITE ; 
 scalar_t__ L2C_UCD_STATE_UNUSED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC6 (int*) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 

UINT16 FUNC11 (UINT16 psm, BD_ADDR rem_bda, BT_HDR *p_buf, UINT16 flags)
{
    tL2C_LCB        *p_lcb;
    tL2C_CCB        *p_ccb;
    tL2C_RCB        *p_rcb;
    UINT8           *p;

    FUNC0 ("L2CA_UcdDataWrite()  PSM: 0x%04x  BDA: %08x%04x", psm,
                     (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                     (rem_bda[4] << 8) + rem_bda[5]);

    /* Fail if the PSM is not registered */
    if (((p_rcb = FUNC9 (psm)) == NULL)
            || ( p_rcb->ucd.state == L2C_UCD_STATE_UNUSED )) {
        FUNC2 ("L2CAP - no RCB for L2CA_UcdDataWrite, PSM: 0x%04x", psm);
        FUNC10 (p_buf);
        return (L2CAP_DW_FAILED);
    }

    /* First, see if we already have a link to the remote */
    /*  then find the channel control block for UCD */
    if (((p_lcb = FUNC8 (rem_bda, BT_TRANSPORT_BR_EDR)) == NULL)
            || ((p_ccb = FUNC7 (p_lcb, L2CAP_CONNECTIONLESS_CID)) == NULL)) {
        if ( FUNC6 (rem_bda) == FALSE ) {
            FUNC10 (p_buf);
            return (L2CAP_DW_FAILED);
        }

        /* If we still don't have lcb and ccb after connect attempt, then can't proceed */
        if (((p_lcb = FUNC8 (rem_bda, BT_TRANSPORT_BR_EDR)) == NULL)
                || ((p_ccb = FUNC7 (p_lcb, L2CAP_CONNECTIONLESS_CID)) == NULL)) {
            FUNC10 (p_buf);
            return (L2CAP_DW_FAILED);
        }
    }

    /* write PSM */
    p_buf->offset -= L2CAP_UCD_OVERHEAD;
    p_buf->len += L2CAP_UCD_OVERHEAD;
    p = (UINT8 *)(p_buf + 1) + p_buf->offset;

    FUNC3 (p, psm);

    /* UCD MTU check */
    if ((p_lcb->ucd_mtu) && (p_buf->len > p_lcb->ucd_mtu)) {
        FUNC2 ("L2CAP - Handle: 0x%04x  UCD bigger than peer's UCD mtu size cannot be sent", p_lcb->handle);
        FUNC10 (p_buf);
        return (L2CAP_DW_FAILED);
    }

    /* If already congested, do not accept any more packets */
    if (p_ccb->cong_sent) {
        FUNC1 ("L2CAP - Handle: 0x%04x UCD cannot be sent, already congested count: %u  buff_quota: %u",
                           p_lcb->handle,
                           (FUNC4(p_ccb->xmit_hold_q) +
                            FUNC4(p_lcb->ucd_out_sec_pending_q)),
                           p_ccb->buff_quota);

        FUNC10 (p_buf);
        return (L2CAP_DW_FAILED);
    }

    /* channel based, packet based flushable or non-flushable */
    p_buf->layer_specific = flags;

    FUNC5 (p_ccb, L2CEVT_L2CA_DATA_WRITE, p_buf);

    if (p_ccb->cong_sent) {
        return (L2CAP_DW_CONGESTED);
    } else {
        return (L2CAP_DW_SUCCESS);
    }
}