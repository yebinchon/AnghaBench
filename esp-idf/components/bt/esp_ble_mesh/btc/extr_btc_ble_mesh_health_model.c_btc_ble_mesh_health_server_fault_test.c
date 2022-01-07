
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct bt_mesh_model {int dummy; } ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_4__ {int company_id; int test_id; int * model; } ;
struct TYPE_5__ {TYPE_1__ fault_test; int member_0; } ;
typedef TYPE_2__ esp_ble_mesh_health_server_cb_param_t ;


 int ESP_BLE_MESH_HEALTH_SERVER_FAULT_TEST_EVT ;
 int btc_ble_mesh_health_server_callback (TYPE_2__*,int ) ;

void btc_ble_mesh_health_server_fault_test(struct bt_mesh_model *model, u8_t test_id, u16_t company_id)
{
    esp_ble_mesh_health_server_cb_param_t param = {0};

    param.fault_test.model = (esp_ble_mesh_model_t *)model;
    param.fault_test.test_id = test_id;
    param.fault_test.company_id = company_id;

    btc_ble_mesh_health_server_callback(&param, ESP_BLE_MESH_HEALTH_SERVER_FAULT_TEST_EVT);
}
