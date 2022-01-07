
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_13__ {scalar_t__ size; } ;
typedef TYPE_3__ esp_local_ctrl_prop_val_t ;
struct TYPE_14__ {scalar_t__ size; int ctx; int flags; int type; int name; } ;
typedef TYPE_4__ esp_local_ctrl_prop_t ;
struct TYPE_15__ {int usr_ctx; int (* get_prop_values ) (size_t,TYPE_4__*,TYPE_3__*,int ) ;} ;
typedef TYPE_5__ esp_local_ctrl_handlers_t ;
typedef int esp_err_t ;
struct TYPE_11__ {TYPE_5__ handlers; } ;
struct TYPE_16__ {size_t props_count; TYPE_2__** props; TYPE_1__ config; } ;
struct TYPE_12__ {scalar_t__ size; int ctx; int flags; int type; int name; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*,...) ;
 int TAG ;
 TYPE_8__* local_ctrl_inst_ctx ;
 int stub1 (size_t,TYPE_4__*,TYPE_3__*,int ) ;

esp_err_t esp_local_ctrl_get_prop_values(size_t total_indices, uint32_t *indices,
                                         esp_local_ctrl_prop_t *props,
                                         esp_local_ctrl_prop_val_t *values)
{
    if (!local_ctrl_inst_ctx) {
        ESP_LOGE(TAG, "Service not running");
        return ESP_ERR_INVALID_STATE;
    }
    if (!indices || !props || !values) {
        return ESP_ERR_INVALID_ARG;
    }


    for (size_t i = 0; i < total_indices; i++) {
        if (indices[i] >= local_ctrl_inst_ctx->props_count) {
            ESP_LOGE(TAG, "Invalid property index %d", indices[i]);
            return ESP_ERR_INVALID_ARG;
        }
        props[i].name = local_ctrl_inst_ctx->props[indices[i]]->name;
        props[i].type = local_ctrl_inst_ctx->props[indices[i]]->type;
        props[i].flags = local_ctrl_inst_ctx->props[indices[i]]->flags;
        props[i].size = local_ctrl_inst_ctx->props[indices[i]]->size;
        props[i].ctx = local_ctrl_inst_ctx->props[indices[i]]->ctx;
    }

    esp_local_ctrl_handlers_t *h = &local_ctrl_inst_ctx->config.handlers;
    esp_err_t ret = h->get_prop_values(total_indices, props, values, h->usr_ctx);


    for (size_t i = 0; i < total_indices; i++) {
        if (local_ctrl_inst_ctx->props[indices[i]]->size != 0) {
            values[i].size = local_ctrl_inst_ctx->props[indices[i]]->size;
        }
    }
    return ret;
}
