
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__* BTM_CheckAdvData (scalar_t__*,scalar_t__,scalar_t__*) ;
 scalar_t__ ESP_BLE_AD_MANUFACTURER_SPECIFIC_TYPE ;
 scalar_t__ ESP_BLE_AD_TYPE_128SERVICE_DATA ;
 scalar_t__ ESP_BLE_AD_TYPE_FLAG ;
 int LOG_ERROR (char*,...) ;

uint8_t *esp_ble_resolve_adv_data( uint8_t *adv_data, uint8_t type, uint8_t *length)
{
    if (((type < ESP_BLE_AD_TYPE_FLAG) || (type > ESP_BLE_AD_TYPE_128SERVICE_DATA)) &&
            (type != ESP_BLE_AD_MANUFACTURER_SPECIFIC_TYPE)) {
        LOG_ERROR("the eir type not define, type = %x\n", type);
        return ((void*)0);
    }

    if (adv_data == ((void*)0)) {
        LOG_ERROR("Invalid p_eir data.\n");
        return ((void*)0);
    }

    return (BTM_CheckAdvData( adv_data, type, length));
}
