
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int esp_err_t ;
struct TYPE_4__ {struct TYPE_4__* name; int ctx; int (* ctx_free_fn ) (int ) ;} ;
struct TYPE_3__ {size_t props_count; TYPE_2__** props; } ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_LOGE (int ,char*,char const*) ;
 int ESP_OK ;
 int TAG ;
 int esp_local_ctrl_get_property_index (char const*) ;
 int free (TYPE_2__*) ;
 TYPE_1__* local_ctrl_inst_ctx ;
 int stub1 (int ) ;

esp_err_t esp_local_ctrl_remove_property(const char *name)
{
    int idx = esp_local_ctrl_get_property_index(name);
    if (idx < 0) {
        ESP_LOGE(TAG, "Property %s not found", name);
        return ESP_ERR_NOT_FOUND;
    }


    if (local_ctrl_inst_ctx->props[idx]->ctx_free_fn) {
        local_ctrl_inst_ctx->props[idx]->ctx_free_fn(
            local_ctrl_inst_ctx->props[idx]->ctx);
    }
    free(local_ctrl_inst_ctx->props[idx]->name);
    free(local_ctrl_inst_ctx->props[idx]);
    local_ctrl_inst_ctx->props[idx++] = ((void*)0);



    for (uint32_t i = idx; i < local_ctrl_inst_ctx->props_count; i++) {
        if (local_ctrl_inst_ctx->props[i] == ((void*)0)) {
            break;
        }
        local_ctrl_inst_ctx->props[i-1] = local_ctrl_inst_ctx->props[i];
    }
    local_ctrl_inst_ctx->props_count--;
    return ESP_OK;
}
