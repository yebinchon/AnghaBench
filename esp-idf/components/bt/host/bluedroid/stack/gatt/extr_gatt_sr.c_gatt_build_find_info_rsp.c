
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tGATT_STATUS ;
struct TYPE_10__ {TYPE_1__* p_db; } ;
typedef TYPE_2__ tGATT_SR_REG ;
struct TYPE_11__ {int uuid; } ;
typedef TYPE_3__ tGATT_ATTR32 ;
struct TYPE_12__ {scalar_t__ handle; scalar_t__ uuid_type; scalar_t__ uuid; scalar_t__ p_next; } ;
typedef TYPE_4__ tGATT_ATTR16 ;
struct TYPE_13__ {int uuid; } ;
typedef TYPE_5__ tGATT_ATTR128 ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_14__ {int len; int offset; } ;
struct TYPE_9__ {scalar_t__ p_attr_list; } ;
typedef TYPE_6__ BT_HDR ;


 int ARRAY_TO_STREAM (int*,int ,int ) ;
 scalar_t__ GATT_ATTR_UUID_TYPE_128 ;
 scalar_t__ GATT_ATTR_UUID_TYPE_16 ;
 scalar_t__ GATT_ATTR_UUID_TYPE_32 ;
 int GATT_INFO_TYPE_PAIR_128 ;
 int GATT_INFO_TYPE_PAIR_16 ;
 int GATT_NOT_FOUND ;
 int GATT_NO_RESOURCES ;
 int GATT_SUCCESS ;
 int GATT_TRACE_ERROR (char*) ;
 int L2CAP_MIN_OFFSET ;
 int LEN_UUID_128 ;
 int UINT16_TO_STREAM (int*,scalar_t__) ;
 int gatt_convert_uuid32_to_uuid128 (int*,int ) ;

__attribute__((used)) static tGATT_STATUS gatt_build_find_info_rsp(tGATT_SR_REG *p_rcb, BT_HDR *p_msg, UINT16 *p_len,
        UINT16 s_hdl, UINT16 e_hdl)
{
    tGATT_STATUS status = GATT_NOT_FOUND;
    UINT8 *p;
    UINT16 len = *p_len;
    tGATT_ATTR16 *p_attr = ((void*)0);
    UINT8 info_pair_len[2] = {4, 18};

    if (!p_rcb->p_db || !p_rcb->p_db->p_attr_list) {
        return status;
    }


    p_attr = (tGATT_ATTR16 *) p_rcb->p_db->p_attr_list;

    p = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET + p_msg->len;

    while (p_attr) {
        if (p_attr->handle > e_hdl) {
            break;
        }

        if (p_attr->handle >= s_hdl) {
            if (p_msg->offset == 0) {
                p_msg->offset = (p_attr->uuid_type == GATT_ATTR_UUID_TYPE_16) ? GATT_INFO_TYPE_PAIR_16 : GATT_INFO_TYPE_PAIR_128;
            }

            if (len >= info_pair_len[p_msg->offset - 1]) {
                if (p_msg->offset == GATT_INFO_TYPE_PAIR_16 && p_attr->uuid_type == GATT_ATTR_UUID_TYPE_16) {
                    UINT16_TO_STREAM(p, p_attr->handle);
                    UINT16_TO_STREAM(p, p_attr->uuid);
                } else if (p_msg->offset == GATT_INFO_TYPE_PAIR_128 && p_attr->uuid_type == GATT_ATTR_UUID_TYPE_128 ) {
                    UINT16_TO_STREAM(p, p_attr->handle);
                    ARRAY_TO_STREAM (p, ((tGATT_ATTR128 *) p_attr)->uuid, LEN_UUID_128);
                } else if (p_msg->offset == GATT_INFO_TYPE_PAIR_128 && p_attr->uuid_type == GATT_ATTR_UUID_TYPE_32) {
                    UINT16_TO_STREAM(p, p_attr->handle);
                    gatt_convert_uuid32_to_uuid128(p, ((tGATT_ATTR32 *) p_attr)->uuid);
                    p += LEN_UUID_128;
                } else {
                    GATT_TRACE_ERROR("format mismatch");
                    status = GATT_NO_RESOURCES;
                    break;

                }
                p_msg->len += info_pair_len[p_msg->offset - 1];
                len -= info_pair_len[p_msg->offset - 1];
                status = GATT_SUCCESS;

            } else {
                status = GATT_NO_RESOURCES;
                break;
            }
        }
        p_attr = (tGATT_ATTR16 *)p_attr->p_next;
    }

    *p_len = len;
    return status;
}
