
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int esp_ble_gatts_register_callback (int ) ;
 int gatts_event_handler ;

esp_err_t hidd_register_cb(void)
{
 esp_err_t status;
 status = esp_ble_gatts_register_callback(gatts_event_handler);
 return status;
}
