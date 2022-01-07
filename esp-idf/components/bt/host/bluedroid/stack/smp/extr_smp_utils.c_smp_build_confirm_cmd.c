
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int confirm; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int UINT8 ;
struct TYPE_6__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;


 int ARRAY_TO_STREAM (int *,int ,int ) ;
 int BT_OCTET16_LEN ;
 int L2CAP_MIN_OFFSET ;
 int SMP_CONFIRM_CMD_SIZE ;
 int SMP_OPCODE_CONFIRM ;
 int SMP_TRACE_EVENT (char*) ;
 int UINT8_TO_STREAM (int *,int ) ;
 int UNUSED (int ) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static BT_HDR *smp_build_confirm_cmd(UINT8 cmd_code, tSMP_CB *p_cb)
{
    BT_HDR *p_buf = ((void*)0) ;
    UINT8 *p;
    UNUSED(cmd_code);

    SMP_TRACE_EVENT("smp_build_confirm_cmd\n");
    if ((p_buf = (BT_HDR *)osi_malloc(sizeof(BT_HDR) + SMP_CONFIRM_CMD_SIZE + L2CAP_MIN_OFFSET)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        UINT8_TO_STREAM (p, SMP_OPCODE_CONFIRM);
        ARRAY_TO_STREAM (p, p_cb->confirm, BT_OCTET16_LEN);

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = SMP_CONFIRM_CMD_SIZE;
    }

    return p_buf;
}
