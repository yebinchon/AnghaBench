
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int offset; int len; } ;
typedef TYPE_1__ BT_HDR ;


 int GATT_DATA_BUF_SIZE ;
 int GATT_OP_CODE_SIZE ;
 int GATT_PREP_WRITE_EXEC ;
 int GATT_REQ_EXEC_WRITE ;
 int L2CAP_MIN_OFFSET ;
 int UINT8_TO_STREAM (int *,int ) ;
 scalar_t__ osi_malloc (int ) ;

BT_HDR *attp_build_exec_write_cmd (UINT8 op_code, UINT8 flag)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p;

    if ((p_buf = (BT_HDR *)osi_malloc(GATT_DATA_BUF_SIZE)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = GATT_OP_CODE_SIZE;

        UINT8_TO_STREAM (p, op_code);

        if (op_code == GATT_REQ_EXEC_WRITE) {
            flag &= GATT_PREP_WRITE_EXEC;
            UINT8_TO_STREAM (p, flag);
            p_buf->len += 1;
        }

    }

    return p_buf;
}
