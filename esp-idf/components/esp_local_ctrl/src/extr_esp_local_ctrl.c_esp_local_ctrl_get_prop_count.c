
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_2__ {size_t props_count; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 TYPE_1__* local_ctrl_inst_ctx ;

esp_err_t esp_local_ctrl_get_prop_count(size_t *count)
{
    if (!local_ctrl_inst_ctx) {
        ESP_LOGE(TAG, "Service not running");
        return ESP_ERR_INVALID_STATE;
    }
    if (!count) {
        return ESP_ERR_INVALID_ARG;
    }
    *count = local_ctrl_inst_ctx->props_count;
    return ESP_OK;
}
