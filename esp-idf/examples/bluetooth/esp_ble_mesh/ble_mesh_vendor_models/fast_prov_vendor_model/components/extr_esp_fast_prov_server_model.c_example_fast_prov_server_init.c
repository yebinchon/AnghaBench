
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gatt_proxy_enable_timer; int disable_fast_prov_timer; TYPE_2__* model; } ;
typedef TYPE_1__ example_fast_prov_server_t ;
typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__ user_data; } ;
typedef TYPE_2__ esp_ble_mesh_model_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int disable_fast_prov_cb ;
 int enable_gatt_proxy_cb ;
 int k_delayed_work_init (int *,int ) ;

esp_err_t example_fast_prov_server_init(esp_ble_mesh_model_t *model)
{
    example_fast_prov_server_t *srv = ((void*)0);

    if (!model || !model->user_data) {
        return ESP_ERR_INVALID_ARG;
    }

    srv = (example_fast_prov_server_t *)model->user_data;
    srv->model = model;

    k_delayed_work_init(&srv->disable_fast_prov_timer, disable_fast_prov_cb);
    k_delayed_work_init(&srv->gatt_proxy_enable_timer, enable_gatt_proxy_cb);

    return ESP_OK;
}
