
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


typedef size_t uint8_t ;
struct TYPE_12__ {TYPE_5__* p_first_attr; } ;
typedef TYPE_4__ tSDP_DISC_REC ;
struct TYPE_10__ {int u16; TYPE_5__* p_sub_attr; int u32; int * array; } ;
struct TYPE_11__ {TYPE_2__ v; } ;
struct TYPE_13__ {scalar_t__ attr_id; struct TYPE_13__* p_next_attr; TYPE_3__ attr_value; int attr_len_type; } ;
typedef TYPE_5__ tSDP_DISC_ATTR ;
struct TYPE_9__ {int uuid16; int uuid32; int * uuid128; } ;
struct TYPE_14__ {int len; TYPE_1__ uu; } ;
typedef TYPE_6__ tBT_UUID ;
typedef int BOOLEAN ;


 scalar_t__ ATTR_ID_SERVICE_CLASS_ID_LIST ;
 scalar_t__ ATTR_ID_SERVICE_ID ;
 scalar_t__ DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 size_t LEN_UUID_128 ;
 int LEN_UUID_16 ;
 int LEN_UUID_32 ;
 int SDP_DISC_ATTR_LEN (int ) ;
 scalar_t__ SDP_DISC_ATTR_TYPE (int ) ;
 int TRUE ;
 scalar_t__ UUID_DESC_TYPE ;

BOOLEAN SDP_FindServiceUUIDInRec(tSDP_DISC_REC *p_rec, tBT_UUID *p_uuid)
{

    tSDP_DISC_ATTR *p_attr, *p_sattr, *p_extra_sattr;

    p_attr = p_rec->p_first_attr;

    while (p_attr) {
        if ((p_attr->attr_id == ATTR_ID_SERVICE_CLASS_ID_LIST)
                && (SDP_DISC_ATTR_TYPE(p_attr->attr_len_type) == DATA_ELE_SEQ_DESC_TYPE)) {
            for (p_sattr = p_attr->attr_value.v.p_sub_attr; p_sattr; p_sattr = p_sattr->p_next_attr) {
                if (SDP_DISC_ATTR_TYPE(p_sattr->attr_len_type) == UUID_DESC_TYPE) {
                    if (SDP_DISC_ATTR_LEN(p_sattr->attr_len_type) == LEN_UUID_16) {
                        p_uuid->len = LEN_UUID_16;
                        p_uuid->uu.uuid16 = p_sattr->attr_value.v.u16;
                    } else if (SDP_DISC_ATTR_LEN(p_sattr->attr_len_type) == LEN_UUID_128) {
                        p_uuid->len = LEN_UUID_128;
                        for (uint8_t i = 0; i != LEN_UUID_128; ++i) {
                            p_uuid->uu.uuid128[i] = p_sattr->attr_value.v.array[LEN_UUID_128 - i - 1];
                        }
                    } else if (SDP_DISC_ATTR_LEN(p_sattr->attr_len_type) == LEN_UUID_32) {
                        p_uuid->len = LEN_UUID_32;
                        p_uuid->uu.uuid32 = p_sattr->attr_value.v.u32;
                    }

                    return (TRUE);
                }





                else {
                    if (SDP_DISC_ATTR_TYPE(p_sattr->attr_len_type) == DATA_ELE_SEQ_DESC_TYPE) {

                        for (p_extra_sattr = p_sattr->attr_value.v.p_sub_attr; p_extra_sattr; p_extra_sattr = p_extra_sattr->p_next_attr) {

                            if ((SDP_DISC_ATTR_TYPE(p_extra_sattr->attr_len_type) == UUID_DESC_TYPE)

                                    && (SDP_DISC_ATTR_LEN(p_extra_sattr->attr_len_type) == 2)) {
                                p_uuid->len = 2;
                                p_uuid->uu.uuid16 = p_extra_sattr->attr_value.v.u16;
                                return (TRUE);
                            }
                        }
                    }
                }
            }
            break;
        } else if (p_attr->attr_id == ATTR_ID_SERVICE_ID) {
            if ((SDP_DISC_ATTR_TYPE(p_attr->attr_len_type) == UUID_DESC_TYPE)

                    && (SDP_DISC_ATTR_LEN(p_attr->attr_len_type) == 2)) {
                p_uuid->len = 2;
                p_uuid->uu.uuid16 = p_attr->attr_value.v.u16;
                return (TRUE);
            }
        }
        p_attr = p_attr->p_next_attr;
    }
    return FALSE;



}
