
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int esp_err_t ;
struct TYPE_4__ {size_t cid; int change_flag; int * param_key; int * instance_ptr; } ;
typedef TYPE_1__ characteristic_descriptor_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int SENSE_MB_CHECK (int,int ,char*) ;
 TYPE_1__** active_cid_table ;
 size_t active_cid_table_size ;
 int assert (int ) ;

esp_err_t sense_modbus_get_cid_data(uint16_t cid, characteristic_descriptor_t* cid_data)
{
    assert(active_cid_table != ((void*)0));
    SENSE_MB_CHECK((cid_data != ((void*)0)), ESP_ERR_INVALID_ARG, "incorrect data pointer.");
    SENSE_MB_CHECK((cid < active_cid_table_size), ESP_ERR_INVALID_ARG, "cid is not found in the table.");

    characteristic_descriptor_t* cid_info = active_cid_table[cid];
    SENSE_MB_CHECK((cid_info != ((void*)0)), ESP_ERR_INVALID_STATE, "incorrect cid table or not initialized.");
    SENSE_MB_CHECK((cid_info->instance_ptr != ((void*)0)), ESP_ERR_INVALID_STATE, "incorrect cid table instance_ptr.");
    SENSE_MB_CHECK((cid_info->param_key != ((void*)0)), ESP_ERR_INVALID_STATE, "incorrect cid table param_key.");
    SENSE_MB_CHECK((cid_info->cid == cid), ESP_ERR_INVALID_STATE, "incorrect cid in the table or not initialized.");
    *cid_data = *cid_info;
    cid_info->change_flag = 0x00;

    return ESP_OK;
}
