
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_local_ctrl_prop_t ;
struct TYPE_2__ {int const** props; } ;


 int ESP_LOGE (int ,char*,char const*) ;
 int TAG ;
 int esp_local_ctrl_get_property_index (char const*) ;
 TYPE_1__* local_ctrl_inst_ctx ;

const esp_local_ctrl_prop_t *esp_local_ctrl_get_property(const char *name)
{
    int idx = esp_local_ctrl_get_property_index(name);
    if (idx < 0) {
        ESP_LOGE(TAG, "Property %s not found", name);
        return ((void*)0);
    }

    return local_ctrl_inst_ctx->props[idx];
}
