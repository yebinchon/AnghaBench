
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int offset; int len; } ;
typedef TYPE_1__ BT_HDR ;


 int ARRAY_TO_STREAM (int*,int*,int) ;
 int GATT_REQ_PREPARE_WRITE ;
 int GATT_RSP_PREPARE_WRITE ;
 int GATT_RSP_READ ;
 int GATT_RSP_READ_BLOB ;
 int GATT_RSP_READ_BY_TYPE ;
 int GATT_TRACE_WARNING (char*,int) ;
 int L2CAP_MIN_OFFSET ;
 int UINT16_TO_STREAM (int*,int) ;
 int UINT8_TO_STREAM (int*,int) ;
 scalar_t__ osi_malloc (int) ;

BT_HDR *attp_build_value_cmd (UINT16 payload_size, UINT8 op_code, UINT16 handle,
                              UINT16 offset, UINT16 len, UINT8 *p_data)
{
    BT_HDR *p_buf = ((void*)0);
    UINT8 *p, *pp, pair_len, *p_pair_len;

    if ((p_buf = (BT_HDR *)osi_malloc((UINT16)(sizeof(BT_HDR) + payload_size + L2CAP_MIN_OFFSET))) != ((void*)0)) {
        p = pp = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

        UINT8_TO_STREAM (p, op_code);
        p_buf->offset = L2CAP_MIN_OFFSET;
        p_buf->len = 1;

        if (op_code == GATT_RSP_READ_BY_TYPE) {
            p_pair_len = p;
            pair_len = len + 2;
            UINT8_TO_STREAM (p, pair_len);
            p_buf->len += 1;
        }
        if (op_code != GATT_RSP_READ_BLOB && op_code != GATT_RSP_READ) {
            UINT16_TO_STREAM (p, handle);
            p_buf->len += 2;
        }

        if (op_code == GATT_REQ_PREPARE_WRITE || op_code == GATT_RSP_PREPARE_WRITE ) {
            UINT16_TO_STREAM (p, offset);
            p_buf->len += 2;
        }

        if (len > 0 && p_data != ((void*)0)) {

            if (payload_size - p_buf->len < len) {
                len = payload_size - p_buf->len;

                if (op_code == GATT_RSP_READ_BY_TYPE) {
                    *p_pair_len = (len + 2);
                }

                GATT_TRACE_WARNING("attribute value too long, to be truncated to %d", len);
            }

            ARRAY_TO_STREAM (p, p_data, len);
            p_buf->len += len;
        }
    }
    return p_buf;
}
