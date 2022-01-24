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
typedef  int /*<<< orphan*/  tBT_UUID ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_3__ {int offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 scalar_t__ GATT_OP_CODE_SIZE ; 
 int L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

BT_HDR *FUNC4(UINT8 op_code, UINT16 s_hdl, UINT16 e_hdl, tBT_UUID uuid)
{
    BT_HDR      *p_buf = NULL;
    UINT8       *p;

    if ((p_buf = (BT_HDR *)FUNC3(sizeof(BT_HDR) + 8 + L2CAP_MIN_OFFSET)) != NULL) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;
        /* Describe the built message location and size */
        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = GATT_OP_CODE_SIZE + 4;

        FUNC1 (p, op_code);
        FUNC0 (p, s_hdl);
        FUNC0 (p, e_hdl);
        p_buf->len += FUNC2(&p, uuid);
    }

    return p_buf;
}