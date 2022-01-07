
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int offset; int len; } ;
typedef TYPE_1__ BT_HDR ;


 int L2CAP_MIN_OFFSET ;
 int UINT8_TO_STREAM (int *,int ) ;
 scalar_t__ osi_malloc (int) ;

BT_HDR *attp_build_opcode_cmd(UINT8 op_code)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p;

    if ((p_buf = (BT_HDR *)osi_malloc(sizeof(BT_HDR) + 1 + L2CAP_MIN_OFFSET)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;
        p_buf->offset = L2CAP_MIN_OFFSET;

        UINT8_TO_STREAM (p, op_code);
        p_buf->len = 1;
    }

    return p_buf;
}
