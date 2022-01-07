
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {struct TYPE_3__* gatt_db; } ;


 int ESP_OK ;
 int free (TYPE_1__*) ;
 TYPE_1__* g_ble_cfg_p ;

esp_err_t simple_ble_deinit(void)
{
    free(g_ble_cfg_p->gatt_db);
    free(g_ble_cfg_p);
    g_ble_cfg_p = ((void*)0);
    return ESP_OK;
}
