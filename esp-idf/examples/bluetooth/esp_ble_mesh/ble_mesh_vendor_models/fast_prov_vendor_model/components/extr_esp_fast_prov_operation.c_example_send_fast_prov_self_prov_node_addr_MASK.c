#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_buf_simple {int len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  role; int /*<<< orphan*/  timeout; int /*<<< orphan*/  dst; int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; } ;
typedef  TYPE_1__ example_msg_common_info_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {int send_rel; int /*<<< orphan*/  send_ttl; int /*<<< orphan*/  addr; int /*<<< orphan*/  app_idx; int /*<<< orphan*/  net_idx; } ;
typedef  TYPE_2__ esp_ble_mesh_msg_ctx_t ;
typedef  int /*<<< orphan*/  esp_ble_mesh_model_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NODE_ADDR ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

esp_err_t FUNC2(esp_ble_mesh_model_t *model,
        example_msg_common_info_t *info,
        struct net_buf_simple *node_addr)
{
    if (!model || !info || !node_addr || (node_addr->len % 2)) {
        return ESP_ERR_INVALID_ARG;
    }

    FUNC0("Send node address", node_addr->data, node_addr->len);

    esp_ble_mesh_msg_ctx_t ctx = {
        .net_idx  = info->net_idx,
        .app_idx  = info->app_idx,
        .addr     = info->dst,
        .send_rel = false,
        .send_ttl = 0,
    };

    return FUNC1(model, &ctx,
            ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NODE_ADDR,
            node_addr->len, node_addr->data, info->timeout, true, info->role);
}