#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ local_cid; TYPE_2__* p_rcb; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  int /*<<< orphan*/  (* tL2CA_DISCONNECT_IND_CB ) (scalar_t__,int /*<<< orphan*/ ) ;
typedef  scalar_t__ UINT16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* pL2CA_DisconnectInd_Cb ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_1__ api; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ L2CAP_BASE_APPL_CID ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5 (tL2C_CCB *p_ccb)
{
    UINT16      local_cid = p_ccb->local_cid;

    if (local_cid >= L2CAP_BASE_APPL_CID) {
        tL2CA_DISCONNECT_IND_CB   *p_disc_cb = &p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;

        FUNC1 ("L2CAP - disconnect_chnl CID: 0x%04x", local_cid);

        FUNC3 (p_ccb);

        FUNC2 (p_ccb);

        (*p_disc_cb)(local_cid, FALSE);
    } else {
        /* failure on the AMP channel, probably need to disconnect ACL */
        FUNC0 ("L2CAP - disconnect_chnl CID: 0x%04x Ignored", local_cid);
    }
}