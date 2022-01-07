
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8_t ;
struct bt_mesh_model {int dummy; } ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_4__ {int time; int * model; } ;
struct TYPE_5__ {TYPE_1__ attention_on; int member_0; } ;
typedef TYPE_2__ esp_ble_mesh_health_server_cb_param_t ;


 int ESP_BLE_MESH_HEALTH_SERVER_ATTENTION_ON_EVT ;
 int btc_ble_mesh_health_server_callback (TYPE_2__*,int ) ;

void btc_ble_mesh_health_server_attention_on(struct bt_mesh_model *model, u8_t time)
{
    esp_ble_mesh_health_server_cb_param_t param = {0};

    param.attention_on.model = (esp_ble_mesh_model_t *)model;
    param.attention_on.time = time;

    btc_ble_mesh_health_server_callback(&param, ESP_BLE_MESH_HEALTH_SERVER_ATTENTION_ON_EVT);
}
