#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_TCB ;
struct TYPE_4__ {int /*<<< orphan*/  value; void* offset; void* len; void* handle; } ;
struct TYPE_5__ {TYPE_1__ attr_value; } ;
typedef  TYPE_2__ tGATT_CL_MSG ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  void* UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 

UINT8 FUNC2 (tGATT_TCB *p_tcb, UINT16 clcb_idx, UINT8 op_code,
                           UINT16 handle, UINT16 len,
                           UINT16 offset, UINT8 *p_data)
{
    tGATT_CL_MSG     msg;

    msg.attr_value.handle = handle;
    msg.attr_value.len = len;
    msg.attr_value.offset = offset;

    FUNC1 (msg.attr_value.value, p_data, len);

    /* write by handle */
    return FUNC0(p_tcb, clcb_idx, op_code, &msg);
}