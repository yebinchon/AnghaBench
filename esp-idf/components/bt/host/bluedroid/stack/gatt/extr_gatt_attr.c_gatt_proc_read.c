
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ tGATT_STATUS ;
struct TYPE_7__ {int handle; int offset; scalar_t__ is_long; } ;
typedef TYPE_2__ tGATT_READ_REQ ;
struct TYPE_6__ {int value; scalar_t__ len; int handle; int offset; } ;
struct TYPE_8__ {TYPE_1__ attr_value; } ;
typedef TYPE_3__ tGATTS_RSP ;
typedef int tGATTS_REQ_TYPE ;
typedef scalar_t__ UINT16 ;


 scalar_t__ GATTS_GetAttributeValue (int ,scalar_t__*,int **) ;
 scalar_t__ GATT_MAX_ATTR_LEN ;
 scalar_t__ GATT_NO_RESOURCES ;
 scalar_t__ GATT_SUCCESS ;
 int UNUSED (int ) ;
 int memcpy (int ,int *,scalar_t__) ;

tGATT_STATUS gatt_proc_read (tGATTS_REQ_TYPE type, tGATT_READ_REQ *p_data, tGATTS_RSP *p_rsp)
{
    tGATT_STATUS status = GATT_NO_RESOURCES;
    UNUSED(type);

    if (p_data->is_long) {
        p_rsp->attr_value.offset = p_data->offset;
    }

    p_rsp->attr_value.handle = p_data->handle;
    UINT16 len = 0;
    uint8_t *value;
    status = GATTS_GetAttributeValue(p_data->handle, &len, &value);
    if(status == GATT_SUCCESS && len > 0 && value) {
        if(len > GATT_MAX_ATTR_LEN) {
            len = GATT_MAX_ATTR_LEN;
        }
        p_rsp->attr_value.len = len;
        memcpy(p_rsp->attr_value.value, value, len);
    }

    return status;
}
