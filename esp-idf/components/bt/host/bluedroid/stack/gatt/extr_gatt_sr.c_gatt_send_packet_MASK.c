#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int payload_size; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATT_STATUS ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;
struct TYPE_8__ {int len; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  GATT_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  GATT_NO_RESOURCES ; 
 int L2CAP_MIN_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

tGATT_STATUS FUNC4 (tGATT_TCB *p_tcb, UINT8 *p_data, UINT16 len)
{
    BT_HDR          *p_msg = NULL;
    UINT8           *p_m = NULL;
    UINT16          buf_len;
    tGATT_STATUS    status;

    if (len > p_tcb->payload_size){
        return  GATT_ILLEGAL_PARAMETER;
    }

    buf_len = (UINT16)(sizeof(BT_HDR) + p_tcb->payload_size + L2CAP_MIN_OFFSET);
    if ((p_msg = (BT_HDR *)FUNC3(buf_len)) == NULL) {
        return GATT_NO_RESOURCES;
    }

    FUNC2(p_msg, 0, buf_len);
    p_msg->len = len;
    p_m = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET;
    FUNC1(p_m, p_data, len);

    status = FUNC0(p_tcb, p_msg);
    return status;
}