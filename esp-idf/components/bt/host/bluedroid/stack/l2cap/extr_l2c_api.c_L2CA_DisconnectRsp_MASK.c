#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CEVT_L2CA_DISCONNECT_RSP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC4 (UINT16 cid)
{
    tL2C_CCB        *p_ccb;

    //counter_add("l2cap.disconn.rsp", 1);
    FUNC0 ("L2CA_DisconnectRsp()  CID: 0x%04x", cid);

    /* Find the channel control block. We don't know the link it is on. */
    if ((p_ccb = FUNC3 (NULL, cid)) == NULL) {
        FUNC1 ("L2CAP - no CCB for L2CA_disc_rsp, CID: %d", cid);
        return (FALSE);
    }

    FUNC2 (p_ccb, L2CEVT_L2CA_DISCONNECT_RSP, NULL);

    return (TRUE);
}