
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value_len; int value; int uuid; int e_handle; int s_handle; } ;
typedef TYPE_1__ tGATT_FIND_TYPE_VALUE ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_6__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;


 int GATT_REQ_FIND_TYPE_VALUE ;
 int L2CAP_MIN_OFFSET ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,int ) ;
 scalar_t__ gatt_build_uuid_to_stream (int **,int ) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ osi_malloc (int) ;

BT_HDR *attp_build_read_by_type_value_cmd (UINT16 payload_size, tGATT_FIND_TYPE_VALUE *p_value_type)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p;
    UINT16 len = p_value_type->value_len;

    if ((p_buf = (BT_HDR *)osi_malloc((UINT16)(sizeof(BT_HDR) + payload_size + L2CAP_MIN_OFFSET))) != ((void*)0)) {
        p = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = 5;

        UINT8_TO_STREAM (p, GATT_REQ_FIND_TYPE_VALUE);
        UINT16_TO_STREAM (p, p_value_type->s_handle);
        UINT16_TO_STREAM (p, p_value_type->e_handle);

        p_buf->len += gatt_build_uuid_to_stream(&p, p_value_type->uuid);

        if (p_value_type->value_len + p_buf->len > payload_size ) {
            len = payload_size - p_buf->len;
        }

        memcpy (p, p_value_type->value, len);
        p_buf->len += len;
    }

    return p_buf;
}
