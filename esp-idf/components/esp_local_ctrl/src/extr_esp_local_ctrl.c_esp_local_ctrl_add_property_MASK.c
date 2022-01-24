#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  ctx_free_fn; int /*<<< orphan*/  ctx; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ esp_local_ctrl_prop_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_10__ {int /*<<< orphan*/  ctx_free_fn; int /*<<< orphan*/  ctx; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ max_properties; } ;
struct TYPE_9__ {scalar_t__ props_count; TYPE_4__** props; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_4__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_3__* local_ctrl_inst_ctx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC5(const esp_local_ctrl_prop_t *prop)
{
    if (!local_ctrl_inst_ctx) {
        FUNC0(TAG, "Service not running");
        return ESP_ERR_INVALID_STATE;
    }
    if (!prop || !prop->name) {
        return ESP_ERR_INVALID_ARG;
    }
    if (FUNC2(prop->name) >= 0) {
        FUNC0(TAG, "Property with name %s exists", prop->name);
        return ESP_ERR_INVALID_STATE;
    }

    if (local_ctrl_inst_ctx->config.max_properties
        == local_ctrl_inst_ctx->props_count) {
        FUNC0(TAG, "Max properties limit reached. Cannot add property %s", prop->name);
        return ESP_ERR_NO_MEM;
    }

    uint32_t i = local_ctrl_inst_ctx->props_count;
    local_ctrl_inst_ctx->props[i] = FUNC1(1, sizeof(esp_local_ctrl_prop_t));
    if (!local_ctrl_inst_ctx->props[i]) {
        FUNC0(TAG, "Failed to allocate memory for new property %s", prop->name);
        return ESP_ERR_NO_MEM;
    }
    local_ctrl_inst_ctx->props[i]->name = FUNC4(prop->name);
    if (!local_ctrl_inst_ctx->props[i]->name) {
        FUNC0(TAG, "Failed to allocate memory for property data %s", prop->name);
        FUNC3(local_ctrl_inst_ctx->props[i]);
        local_ctrl_inst_ctx->props[i] = NULL;
        return ESP_ERR_NO_MEM;
    }
    local_ctrl_inst_ctx->props[i]->type  = prop->type;
    local_ctrl_inst_ctx->props[i]->size  = prop->size;
    local_ctrl_inst_ctx->props[i]->flags = prop->flags;
    local_ctrl_inst_ctx->props[i]->ctx   = prop->ctx;
    local_ctrl_inst_ctx->props[i]->ctx_free_fn = prop->ctx_free_fn;
    local_ctrl_inst_ctx->props_count++;
    return ESP_OK;
}