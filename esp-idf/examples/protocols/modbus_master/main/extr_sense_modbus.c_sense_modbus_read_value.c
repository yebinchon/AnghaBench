
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_3__ {size_t cid; int timestamp; int instance_size; scalar_t__ status; int * param_key; int * instance_ptr; } ;
typedef TYPE_1__ characteristic_descriptor_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 scalar_t__ ESP_OK ;
 scalar_t__ PARAM_TYPE_ASCII ;
 int SENSE_MB_CHECK (int,int ,char*,...) ;
 TYPE_1__** active_cid_table ;
 size_t active_cid_table_size ;
 int assert (int ) ;
 scalar_t__ mbc_master_get_parameter (size_t,char*,scalar_t__*,scalar_t__*) ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int ,int ) ;
 int sense_modbus_get_time_stamp_us () ;

esp_err_t sense_modbus_read_value(uint16_t cid, void *value)
{
    assert(active_cid_table != ((void*)0));
    SENSE_MB_CHECK((value != ((void*)0)), ESP_ERR_INVALID_ARG, "incorrect value pointer.");
    SENSE_MB_CHECK((cid < active_cid_table_size), ESP_ERR_INVALID_ARG, "incorrect cid to read.");
    characteristic_descriptor_t* cid_info = active_cid_table[cid];
    SENSE_MB_CHECK((cid_info->instance_ptr != ((void*)0)), ESP_ERR_INVALID_STATE, "incorrect cid table instance_pointer.");
    SENSE_MB_CHECK((cid_info->param_key != ((void*)0)), ESP_ERR_INVALID_STATE, "incorrect cid table or not initialized.");
    SENSE_MB_CHECK((cid_info->cid == cid), ESP_ERR_INVALID_STATE, "incorrect cid table or not initialized.");


    uint8_t* value_ptr = (uint8_t*)cid_info->instance_ptr;
    uint8_t type = 0;
    memset((void*)value_ptr, 0, cid_info->instance_size);


    esp_err_t error = mbc_master_get_parameter(cid, (char*)cid_info->param_key, value_ptr, &type);
    SENSE_MB_CHECK((type <= PARAM_TYPE_ASCII), ESP_ERR_NOT_SUPPORTED, "returned data type is not supported (%u)", type);
    cid_info->status = error;
    if (error == ESP_OK) {

        memcpy((void*)value, (void*)value_ptr, cid_info->instance_size);
        cid_info->timestamp = sense_modbus_get_time_stamp_us();
    }
    return error;
}
