#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  confirm; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_6__ {int offset; int len; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 int L2CAP_MIN_OFFSET ; 
 int SMP_CONFIRM_CMD_SIZE ; 
 int /*<<< orphan*/  SMP_OPCODE_CONFIRM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static BT_HDR *FUNC5(UINT8 cmd_code, tSMP_CB *p_cb)
{
    BT_HDR      *p_buf = NULL ;
    UINT8       *p;
    FUNC3(cmd_code);

    FUNC1("smp_build_confirm_cmd\n");
    if ((p_buf = (BT_HDR *)FUNC4(sizeof(BT_HDR) + SMP_CONFIRM_CMD_SIZE + L2CAP_MIN_OFFSET)) != NULL) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        FUNC2 (p, SMP_OPCODE_CONFIRM);
        FUNC0 (p, p_cb->confirm, BT_OCTET16_LEN);

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = SMP_CONFIRM_CMD_SIZE;
    }

    return p_buf;
}