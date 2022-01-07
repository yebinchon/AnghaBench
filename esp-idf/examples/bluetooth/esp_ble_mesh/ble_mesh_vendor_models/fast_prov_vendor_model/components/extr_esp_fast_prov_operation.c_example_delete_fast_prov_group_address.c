
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__* groups; } ;
typedef TYPE_1__ esp_ble_mesh_model_t ;
typedef int esp_ble_mesh_elem_t ;
struct TYPE_6__ {int element_count; int * elements; } ;
typedef TYPE_2__ esp_ble_mesh_comp_t ;


 int ARRAY_SIZE (scalar_t__*) ;
 int ESP_BLE_MESH_ADDR_IS_GROUP (scalar_t__) ;
 scalar_t__ ESP_BLE_MESH_ADDR_UNASSIGNED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_1__* esp_ble_mesh_find_sig_model (int *,scalar_t__) ;
 TYPE_2__* esp_ble_mesh_get_composition_data () ;

esp_err_t example_delete_fast_prov_group_address(uint16_t model_id, uint16_t group_addr)
{
    const esp_ble_mesh_comp_t *comp = ((void*)0);
    esp_ble_mesh_elem_t *element = ((void*)0);
    esp_ble_mesh_model_t *model = ((void*)0);
    int i, j;

    if (!ESP_BLE_MESH_ADDR_IS_GROUP(group_addr)) {
        return ESP_ERR_INVALID_ARG;
    }

    comp = esp_ble_mesh_get_composition_data();
    if (comp == ((void*)0)) {
        return ESP_FAIL;
    }

    for (i = 0; i < comp->element_count; i++) {
        element = &comp->elements[i];

        model = esp_ble_mesh_find_sig_model(element, model_id);
        if (model == ((void*)0)) {
            continue;
        }
        for (j = 0; j < ARRAY_SIZE(model->groups); j++) {
            if (model->groups[j] == group_addr) {
                model->groups[j] = ESP_BLE_MESH_ADDR_UNASSIGNED;
                break;
            }
        }
    }

    return ESP_OK;
}
