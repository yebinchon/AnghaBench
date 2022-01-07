
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int simple_ble_cfg_t ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;
 scalar_t__ malloc (int) ;

simple_ble_cfg_t *simple_ble_init(void)
{
    simple_ble_cfg_t *ble_cfg_p = (simple_ble_cfg_t *) malloc(sizeof(simple_ble_cfg_t));
    if (ble_cfg_p == ((void*)0)) {
        ESP_LOGE(TAG, "No memory for simple_ble_cfg_t");
        return ((void*)0);
    }
    return ble_cfg_p;
}
