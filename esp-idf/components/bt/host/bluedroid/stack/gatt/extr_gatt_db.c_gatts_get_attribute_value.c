
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * p_attr_list; } ;
typedef TYPE_3__ tGATT_SVC_DB ;
typedef int tGATT_STATUS ;
struct TYPE_9__ {scalar_t__ handle; scalar_t__ uuid_type; int uuid; struct TYPE_9__* p_next; TYPE_2__* p_value; } ;
typedef TYPE_4__ tGATT_ATTR16 ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ attr_len; int * attr_val; } ;
struct TYPE_7__ {TYPE_1__ attr_val; } ;


 scalar_t__ GATT_ATTR_UUID_TYPE_16 ;
 int GATT_INVALID_PDU ;
 int GATT_NOT_FOUND ;
 int GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*,scalar_t__) ;
 int GATT_TRACE_ERROR (char*) ;



tGATT_STATUS gatts_get_attribute_value(tGATT_SVC_DB *p_db, UINT16 attr_handle,
                                       UINT16 *length, UINT8 **value)
{
    tGATT_ATTR16 *p_cur;

    GATT_TRACE_DEBUG("attr_handle = %x\n", attr_handle);

    if (p_db == ((void*)0)) {
        GATT_TRACE_ERROR("gatts_get_attribute_value Fail:p_db is NULL.\n");
        *length = 0;
        return GATT_INVALID_PDU;
    }
    if (p_db->p_attr_list == ((void*)0)) {
        GATT_TRACE_ERROR("gatts_get_attribute_value Fail:p_db->p_attr_list is NULL.\n");
        *length = 0;
        return GATT_INVALID_PDU;
    }
    if (length == ((void*)0)){
        GATT_TRACE_ERROR("gatts_get_attribute_value Fail:length is NULL.\n");
        return GATT_INVALID_PDU;
    }
    if (value == ((void*)0)){
        GATT_TRACE_ERROR("gatts_get_attribute_value Fail:value is NULL.\n");
        *length = 0;
        return GATT_INVALID_PDU;
    }

    p_cur = (tGATT_ATTR16 *) p_db->p_attr_list;

    while (p_cur != ((void*)0)) {
        if (p_cur->handle == attr_handle) {

            if (p_cur->uuid_type == GATT_ATTR_UUID_TYPE_16) {
                switch (p_cur->uuid) {
                case 129:
                case 128:
                    break;
                default:
                    if (p_cur->p_value && p_cur->p_value->attr_val.attr_len != 0) {
                        *length = p_cur->p_value->attr_val.attr_len;
                        *value = p_cur->p_value->attr_val.attr_val;
                        return GATT_SUCCESS;
                    } else {
                        *length = 0;
                        return GATT_SUCCESS;
                    }
                    break;
                }
            } else {
                if (p_cur->p_value && p_cur->p_value->attr_val.attr_len != 0) {
                    *length = p_cur->p_value->attr_val.attr_len;
                    *value = p_cur->p_value->attr_val.attr_val;
                    return GATT_SUCCESS;
                } else {
                    *length = 0;
                    return GATT_SUCCESS;
                }

            }

            break;

        }

        p_cur = p_cur->p_next;
    }

    return GATT_NOT_FOUND;
}
