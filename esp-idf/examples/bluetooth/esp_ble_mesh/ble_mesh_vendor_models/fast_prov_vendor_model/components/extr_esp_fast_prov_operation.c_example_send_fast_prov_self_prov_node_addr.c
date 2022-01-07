
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_buf_simple {int len; int data; } ;
struct TYPE_5__ {int role; int timeout; int dst; int app_idx; int net_idx; } ;
typedef TYPE_1__ example_msg_common_info_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int send_rel; int send_ttl; int addr; int app_idx; int net_idx; } ;
typedef TYPE_2__ esp_ble_mesh_msg_ctx_t ;
typedef int esp_ble_mesh_model_t ;


 int ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NODE_ADDR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_LOG_BUFFER_HEX (char*,int ,int) ;
 int esp_ble_mesh_client_model_send_msg (int *,TYPE_2__*,int ,int,int ,int ,int,int ) ;

esp_err_t example_send_fast_prov_self_prov_node_addr(esp_ble_mesh_model_t *model,
        example_msg_common_info_t *info,
        struct net_buf_simple *node_addr)
{
    if (!model || !info || !node_addr || (node_addr->len % 2)) {
        return ESP_ERR_INVALID_ARG;
    }

    ESP_LOG_BUFFER_HEX("Send node address", node_addr->data, node_addr->len);

    esp_ble_mesh_msg_ctx_t ctx = {
        .net_idx = info->net_idx,
        .app_idx = info->app_idx,
        .addr = info->dst,
        .send_rel = 0,
        .send_ttl = 0,
    };

    return esp_ble_mesh_client_model_send_msg(model, &ctx,
            ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NODE_ADDR,
            node_addr->len, node_addr->data, info->timeout, 1, info->role);
}
