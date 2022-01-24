#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATT_STATUS ;
typedef  int /*<<< orphan*/  tGATT_SR_MSG ;
struct TYPE_2__ {int /*<<< orphan*/  handle; void* reason; void* cmd_code; } ;
typedef  TYPE_1__ tGATT_ERROR ;
typedef  void* UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  GATT_INSUF_RESOURCE ; 
 int /*<<< orphan*/  GATT_RSP_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

tGATT_STATUS FUNC3 (tGATT_TCB *p_tcb, UINT8 err_code, UINT8 op_code,
                                  UINT16 handle, BOOLEAN deq)
{
    tGATT_ERROR      error;
    tGATT_STATUS     status;
    BT_HDR           *p_buf;

    error.cmd_code = op_code;
    error.reason = err_code;
    error.handle = handle;

    if ((p_buf = FUNC0(p_tcb, GATT_RSP_ERROR, (tGATT_SR_MSG *)&error)) != NULL) {
        status = FUNC1 (p_tcb, p_buf);
    } else {
        status = GATT_INSUF_RESOURCE;
    }
#if (GATTS_INCLUDED == TRUE)
    if (deq) {
        FUNC2(p_tcb);
    }
#endif  ///GATTS_INCLUDED == TRUE
    return status;
}