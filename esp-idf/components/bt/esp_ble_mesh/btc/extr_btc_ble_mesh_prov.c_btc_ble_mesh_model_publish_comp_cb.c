
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_ble_mesh_model_t ;
struct TYPE_4__ {int err_code; int * model; } ;
struct TYPE_5__ {TYPE_1__ model_publish_comp; int member_0; } ;
typedef TYPE_2__ esp_ble_mesh_model_cb_param_t ;


 int ESP_BLE_MESH_MODEL_PUBLISH_COMP_EVT ;
 int btc_ble_mesh_model_callback (TYPE_2__*,int ) ;

__attribute__((used)) static void btc_ble_mesh_model_publish_comp_cb(esp_ble_mesh_model_t *model, int err)
{
    esp_ble_mesh_model_cb_param_t mesh_param = {0};

    mesh_param.model_publish_comp.err_code = err;
    mesh_param.model_publish_comp.model = model;

    btc_ble_mesh_model_callback(&mesh_param, ESP_BLE_MESH_MODEL_PUBLISH_COMP_EVT);
    return;
}
