
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ GATT_HDR_SIZE ;
 int GATT_RSP_ERROR ;
 int L2CAP_MIN_OFFSET ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,int ) ;
 scalar_t__ osi_malloc (int) ;

BT_HDR *attp_build_err_cmd(UINT8 cmd_code, UINT16 err_handle, UINT8 reason)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p;

    if ((p_buf = (BT_HDR *)osi_malloc(sizeof(BT_HDR) + L2CAP_MIN_OFFSET + 5)) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        UINT8_TO_STREAM (p, GATT_RSP_ERROR);
        UINT8_TO_STREAM (p, cmd_code);
        UINT16_TO_STREAM(p, err_handle);
        UINT8_TO_STREAM (p, reason);

        p_buf->offset = L2CAP_MIN_OFFSET;

        p_buf->len = GATT_HDR_SIZE + 1 + 1;
    }
    return p_buf;
}
