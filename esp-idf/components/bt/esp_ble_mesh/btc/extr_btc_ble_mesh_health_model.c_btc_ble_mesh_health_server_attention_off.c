
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bt_mesh_model {int dummy; } ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_4__ {int * model; } ;
struct TYPE_5__ {TYPE_1__ attention_off; int member_0; } ;
typedef TYPE_2__ esp_ble_mesh_health_server_cb_param_t ;


 int ESP_BLE_MESH_HEALTH_SERVER_ATTENTION_OFF_EVT ;
 int btc_ble_mesh_health_server_callback (TYPE_2__*,int ) ;

void btc_ble_mesh_health_server_attention_off(struct bt_mesh_model *model)
{
    esp_ble_mesh_health_server_cb_param_t param = {0};

    param.attention_off.model = (esp_ble_mesh_model_t *)model;

    btc_ble_mesh_health_server_callback(&param, ESP_BLE_MESH_HEALTH_SERVER_ATTENTION_OFF_EVT);
}
