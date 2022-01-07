
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int esp_err_t ;
struct TYPE_8__ {int unicast; } ;
typedef TYPE_2__ esp_ble_mesh_node_info_t ;
typedef int esp_ble_mesh_model_t ;
struct TYPE_7__ {int send_rel; int send_ttl; int addr; int app_idx; int net_idx; } ;
struct TYPE_9__ {int msg_role; int msg_timeout; TYPE_1__ ctx; int * model; int opcode; } ;
typedef TYPE_3__ esp_ble_mesh_client_common_param_t ;
struct TYPE_10__ {int app_idx; int net_idx; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int MSG_ROLE ;
 int MSG_SEND_REL ;
 int MSG_SEND_TTL ;
 int MSG_TIMEOUT ;
 TYPE_4__ prov_key ;

__attribute__((used)) static esp_err_t example_ble_mesh_set_msg_common(esp_ble_mesh_client_common_param_t *common,
                                                 esp_ble_mesh_node_info_t *node,
                                                 esp_ble_mesh_model_t *model, uint32_t opcode)
{
    if (!common || !node || !model) {
        return ESP_ERR_INVALID_ARG;
    }

    common->opcode = opcode;
    common->model = model;
    common->ctx.net_idx = prov_key.net_idx;
    common->ctx.app_idx = prov_key.app_idx;
    common->ctx.addr = node->unicast;
    common->ctx.send_ttl = MSG_SEND_TTL;
    common->ctx.send_rel = MSG_SEND_REL;
    common->msg_timeout = MSG_TIMEOUT;
    common->msg_role = MSG_ROLE;

    return ESP_OK;
}
