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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_3__ {int offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 scalar_t__ GATT_HDR_SIZE ; 
 int /*<<< orphan*/  GATT_RSP_ERROR ; 
 int L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

BT_HDR *FUNC3(UINT8 cmd_code, UINT16 err_handle, UINT8 reason)
{
    BT_HDR      *p_buf = NULL;
    UINT8       *p;

    if ((p_buf = (BT_HDR *)FUNC2(sizeof(BT_HDR) + L2CAP_MIN_OFFSET + 5)) != NULL) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        FUNC1 (p, GATT_RSP_ERROR);
        FUNC1 (p, cmd_code);
        FUNC0(p, err_handle);
        FUNC1 (p, reason);

        p_buf->offset = L2CAP_MIN_OFFSET;
        /* GATT_HDR_SIZE (1B ERR_RSP op code+ 2B handle) + 1B cmd_op_code  + 1B status */
        p_buf->len = GATT_HDR_SIZE + 1 + 1;
    }
    return p_buf;
}