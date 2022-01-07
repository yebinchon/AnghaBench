
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {int ctx_free_fn; int ctx; int flags; int size; int type; int name; } ;
typedef TYPE_2__ esp_local_ctrl_prop_t ;
typedef int esp_err_t ;
struct TYPE_10__ {int ctx_free_fn; int ctx; int flags; int size; int type; int name; } ;
struct TYPE_7__ {scalar_t__ max_properties; } ;
struct TYPE_9__ {scalar_t__ props_count; TYPE_4__** props; TYPE_1__ config; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_OK ;
 int TAG ;
 TYPE_4__* calloc (int,int) ;
 scalar_t__ esp_local_ctrl_get_property_index (int ) ;
 int free (TYPE_4__*) ;
 TYPE_3__* local_ctrl_inst_ctx ;
 int strdup (int ) ;

esp_err_t esp_local_ctrl_add_property(const esp_local_ctrl_prop_t *prop)
{
    if (!local_ctrl_inst_ctx) {
        ESP_LOGE(TAG, "Service not running");
        return ESP_ERR_INVALID_STATE;
    }
    if (!prop || !prop->name) {
        return ESP_ERR_INVALID_ARG;
    }
    if (esp_local_ctrl_get_property_index(prop->name) >= 0) {
        ESP_LOGE(TAG, "Property with name %s exists", prop->name);
        return ESP_ERR_INVALID_STATE;
    }

    if (local_ctrl_inst_ctx->config.max_properties
        == local_ctrl_inst_ctx->props_count) {
        ESP_LOGE(TAG, "Max properties limit reached. Cannot add property %s", prop->name);
        return ESP_ERR_NO_MEM;
    }

    uint32_t i = local_ctrl_inst_ctx->props_count;
    local_ctrl_inst_ctx->props[i] = calloc(1, sizeof(esp_local_ctrl_prop_t));
    if (!local_ctrl_inst_ctx->props[i]) {
        ESP_LOGE(TAG, "Failed to allocate memory for new property %s", prop->name);
        return ESP_ERR_NO_MEM;
    }
    local_ctrl_inst_ctx->props[i]->name = strdup(prop->name);
    if (!local_ctrl_inst_ctx->props[i]->name) {
        ESP_LOGE(TAG, "Failed to allocate memory for property data %s", prop->name);
        free(local_ctrl_inst_ctx->props[i]);
        local_ctrl_inst_ctx->props[i] = ((void*)0);
        return ESP_ERR_NO_MEM;
    }
    local_ctrl_inst_ctx->props[i]->type = prop->type;
    local_ctrl_inst_ctx->props[i]->size = prop->size;
    local_ctrl_inst_ctx->props[i]->flags = prop->flags;
    local_ctrl_inst_ctx->props[i]->ctx = prop->ctx;
    local_ctrl_inst_ctx->props[i]->ctx_free_fn = prop->ctx_free_fn;
    local_ctrl_inst_ctx->props_count++;
    return ESP_OK;
}
