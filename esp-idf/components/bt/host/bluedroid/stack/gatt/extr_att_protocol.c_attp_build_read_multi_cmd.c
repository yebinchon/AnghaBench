
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int offset; int len; } ;
typedef TYPE_1__ BT_HDR ;


 int GATT_REQ_READ_MULTI ;
 int L2CAP_MIN_OFFSET ;
 int UINT16_TO_STREAM (int*,int) ;
 int UINT8_TO_STREAM (int*,int ) ;
 scalar_t__ osi_malloc (int) ;

BT_HDR *attp_build_read_multi_cmd(UINT16 payload_size, UINT16 num_handle, UINT16 *p_handle)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p, i = 0;

    if ((p_buf = (BT_HDR *)osi_malloc((UINT16)(sizeof(BT_HDR) + num_handle * 2 + 1 + L2CAP_MIN_OFFSET))) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = 1;

        UINT8_TO_STREAM (p, GATT_REQ_READ_MULTI);

        for (i = 0; i < num_handle && p_buf->len + 2 <= payload_size; i ++) {
            UINT16_TO_STREAM (p, *(p_handle + i));
            p_buf->len += 2;
        }
    }

    return p_buf;
}
