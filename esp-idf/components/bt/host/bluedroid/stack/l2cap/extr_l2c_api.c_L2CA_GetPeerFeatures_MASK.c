#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * peer_chnl_mask; int /*<<< orphan*/  peer_ext_fea; } ;
typedef  TYPE_1__ tL2C_LCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  L2CAP_FIXED_CHNL_ARRAY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC4 (BD_ADDR bd_addr, UINT32 *p_ext_feat, UINT8 *p_chnl_mask)
{
    tL2C_LCB        *p_lcb;

    /* We must already have a link to the remote */
    if ((p_lcb = FUNC2 (bd_addr, BT_TRANSPORT_BR_EDR)) == NULL) {
        FUNC1 ("L2CA_GetPeerFeatures() No BDA: %08x%04x",
                             (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],
                             (bd_addr[4] << 8) + bd_addr[5]);
        return (FALSE);
    }

    FUNC0 ("L2CA_GetPeerFeatures() BDA: %08x%04x  ExtFea: 0x%08x  Chnl_Mask[0]: 0x%02x",
                     (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],
                     (bd_addr[4] << 8) + bd_addr[5], p_lcb->peer_ext_fea, p_lcb->peer_chnl_mask[0]);

    *p_ext_feat = p_lcb->peer_ext_fea;

    FUNC3 (p_chnl_mask, p_lcb->peer_chnl_mask, L2CAP_FIXED_CHNL_ARRAY_SIZE);

    return (TRUE);
}