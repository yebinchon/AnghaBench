
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int role; int timeout; int dst; int net_idx; int app_idx; } ;
typedef TYPE_3__ example_msg_common_info_t ;
typedef int esp_err_t ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_12__ {int app_idx; int send_rel; scalar_t__ send_ttl; int addr; int net_idx; } ;
struct TYPE_14__ {int msg_role; int msg_timeout; TYPE_2__ ctx; int * model; int opcode; int member_0; } ;
typedef TYPE_4__ esp_ble_mesh_client_common_param_t ;
struct TYPE_11__ {int app_key; int app_idx; int net_idx; } ;
struct TYPE_15__ {TYPE_1__ app_key_add; int member_0; } ;
typedef TYPE_5__ esp_ble_mesh_cfg_client_set_state_t ;
struct TYPE_16__ {int const* app_key; int app_idx; int net_idx; } ;
typedef TYPE_6__ esp_ble_mesh_cfg_app_key_add_t ;


 int ESP_BLE_MESH_MODEL_OP_APP_KEY_ADD ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int esp_ble_mesh_config_client_set_state (TYPE_4__*,TYPE_5__*) ;
 int * esp_ble_mesh_get_fast_prov_app_key (int ,int ) ;
 int memcpy (int ,int const*,int) ;

esp_err_t example_send_config_appkey_add(esp_ble_mesh_model_t *model,
        example_msg_common_info_t *info,
        esp_ble_mesh_cfg_app_key_add_t *add_key)
{
    esp_ble_mesh_client_common_param_t common = {0};
    esp_ble_mesh_cfg_client_set_state_t set = {0};
    const uint8_t *key = ((void*)0);

    if (!model || !info) {
        return ESP_ERR_INVALID_ARG;
    }

    if (add_key) {
        set.app_key_add.net_idx = add_key->net_idx;
        set.app_key_add.app_idx = add_key->app_idx;
        memcpy(set.app_key_add.app_key, add_key->app_key, 16);
    } else {



        if (!key) {
            return ESP_FAIL;
        }
        set.app_key_add.net_idx = info->net_idx;
        set.app_key_add.app_idx = info->app_idx;
        memcpy(set.app_key_add.app_key, key, 16);
    }

    common.opcode = ESP_BLE_MESH_MODEL_OP_APP_KEY_ADD;
    common.model = model;
    common.ctx.net_idx = info->net_idx;
    common.ctx.app_idx = 0x0000;
    common.ctx.addr = info->dst;
    common.ctx.send_rel = 0;
    common.ctx.send_ttl = 0;
    common.msg_timeout = info->timeout;
    common.msg_role = info->role;

    return esp_ble_mesh_config_client_set_state(&common, &set);
}
