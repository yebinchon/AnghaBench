
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int esp_gatt_status_t ;


 int BTA_GetAttributeValue (int ,int *,int **) ;

esp_gatt_status_t btc_gatts_get_attr_value(uint16_t attr_handle, uint16_t *length, uint8_t **value)
{

     return BTA_GetAttributeValue(attr_handle, length, value);
}
