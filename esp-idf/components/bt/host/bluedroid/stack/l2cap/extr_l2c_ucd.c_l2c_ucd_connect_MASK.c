#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_RCB ;
struct TYPE_11__ {int info_rx_bits; int peer_ext_fea; scalar_t__ link_state; } ;
typedef  TYPE_1__ tL2C_LCB ;
struct TYPE_12__ {int /*<<< orphan*/  chnl_state; int /*<<< orphan*/ * p_rcb; int /*<<< orphan*/  fixed_chnl_idle_tout; void* remote_cid; void* local_cid; } ;
typedef  TYPE_2__ tL2C_CCB ;
typedef  scalar_t__ BOOLEAN ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  CST_OPEN ; 
 scalar_t__ FALSE ; 
 void* L2CAP_CONNECTIONLESS_CID ; 
 int L2CAP_EXTENDED_FEATURES_INFO_TYPE ; 
 int L2CAP_EXTFEA_UCD_RECEPTION ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  L2CAP_UCD_CH_PRIORITY ; 
 int /*<<< orphan*/  L2CAP_UCD_IDLE_TIMEOUT ; 
 int /*<<< orphan*/  L2C_UCD_RCB_ID ; 
 scalar_t__ LST_CONNECTED ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,void*) ; 
 TYPE_1__* FUNC8 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOLEAN FUNC10 ( BD_ADDR rem_bda )
{
    tL2C_LCB        *p_lcb;
    tL2C_CCB        *p_ccb;
    tL2C_RCB        *p_rcb;

    FUNC1 ("l2c_ucd_connect()  BDA: %08x%04x",
                       (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                       (rem_bda[4] << 8) + rem_bda[5]);

    /* Fail if we have not established communications with the controller */
    if (!FUNC0()) {
        FUNC2 ("l2c_ucd_connect - BTU not ready");
        return (FALSE);
    }

    /* First, see if we already have a link to the remote */
    if ((p_lcb = FUNC8 (rem_bda, BT_TRANSPORT_BR_EDR)) == NULL) {
        /* No link. Get an LCB and start link establishment */
        if ( ((p_lcb = FUNC4 (rem_bda, FALSE, BT_TRANSPORT_BR_EDR)) == NULL)
                ||  (FUNC6(p_lcb, BT_TRANSPORT_BR_EDR) == FALSE) ) {
            FUNC2 ("L2CAP - conn not started l2c_ucd_connect");
            return (FALSE);
        }
    } else if ( p_lcb->info_rx_bits & (1 << L2CAP_EXTENDED_FEATURES_INFO_TYPE) ) {
        if (!(p_lcb->peer_ext_fea & L2CAP_EXTFEA_UCD_RECEPTION)) {
            FUNC2 ("L2CAP - UCD is not supported by peer, l2c_ucd_connect");
            return (FALSE);
        }
    }

    /* Find the channel control block. */
    if ((p_ccb = FUNC7 (p_lcb, L2CAP_CONNECTIONLESS_CID)) == NULL) {
        /* Allocate a channel control block */
        if ((p_ccb = FUNC3 (p_lcb, 0)) == NULL) {
            FUNC2 ("L2CAP - no CCB for l2c_ucd_connect");
            return (FALSE);
        } else {
            /* Set CID for the connection */
            p_ccb->local_cid  = L2CAP_CONNECTIONLESS_CID;
            p_ccb->remote_cid = L2CAP_CONNECTIONLESS_CID;

            /* Set the default idle timeout value to use */
            p_ccb->fixed_chnl_idle_tout = L2CAP_UCD_IDLE_TIMEOUT;

            /* Set the default channel priority value to use */
            FUNC5 (p_ccb, L2CAP_UCD_CH_PRIORITY);

            if ((p_rcb = FUNC9 (L2C_UCD_RCB_ID)) == NULL) {
                FUNC2 ("L2CAP - no UCD registered, l2c_ucd_connect");
                return (FALSE);
            }
            /* Save UCD registration info */
            p_ccb->p_rcb = p_rcb;

            /* There is no configuration, so if the link is up, the channel is up */
            if (p_lcb->link_state == LST_CONNECTED) {
                p_ccb->chnl_state = CST_OPEN;
            }
        }
    }

    return (TRUE);
}