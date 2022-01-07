
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBT_UUID ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ GATT_OP_CODE_SIZE ;
 int L2CAP_MIN_OFFSET ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,int ) ;
 scalar_t__ gatt_build_uuid_to_stream (int **,int ) ;
 scalar_t__ osi_malloc (int) ;

BT_HDR *attp_build_browse_cmd(UINT8 op_code, UINT16 s_hdl, UINT16 e_hdl, tBT_UUID uuid)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p;

    if ((p_buf = (BT_HDR *)osi_malloc(sizeof(BT_HDR) + 8 + L2CAP_MIN_OFFSET)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = GATT_OP_CODE_SIZE + 4;

        UINT8_TO_STREAM (p, op_code);
        UINT16_TO_STREAM (p, s_hdl);
        UINT16_TO_STREAM (p, e_hdl);
        p_buf->len += gatt_build_uuid_to_stream(&p, uuid);
    }

    return p_buf;
}
