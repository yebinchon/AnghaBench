
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int value; int handle; } ;
typedef TYPE_1__ tGATT_WRITE_REQ ;
typedef int tGATT_STATUS ;
typedef int tGATTS_REQ_TYPE ;


 int GATTS_SetAttributeValue (int ,scalar_t__,int ) ;
 scalar_t__ GATT_MAX_ATTR_LEN ;

tGATT_STATUS gatt_proc_write_req( tGATTS_REQ_TYPE type, tGATT_WRITE_REQ *p_data)
{
    if(p_data->len > GATT_MAX_ATTR_LEN) {
        p_data->len = GATT_MAX_ATTR_LEN;
    }
   return GATTS_SetAttributeValue(p_data->handle,
                           p_data->len,
                           p_data->value);

}
