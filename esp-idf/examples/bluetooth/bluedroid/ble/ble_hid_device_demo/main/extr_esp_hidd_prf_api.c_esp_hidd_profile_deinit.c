
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int esp_err_t ;
struct TYPE_3__ {scalar_t__* att_tbl; } ;
struct TYPE_4__ {int gatt_if; int enabled; TYPE_1__ hidd_inst; } ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 size_t HIDD_LE_IDX_SVC ;
 int HID_LE_PRF_TAG ;
 int esp_ble_gatts_app_unregister (int ) ;
 int esp_ble_gatts_delete_service (scalar_t__) ;
 int esp_ble_gatts_stop_service (scalar_t__) ;
 TYPE_2__ hidd_le_env ;

esp_err_t esp_hidd_profile_deinit(void)
{
    uint16_t hidd_svc_hdl = hidd_le_env.hidd_inst.att_tbl[HIDD_LE_IDX_SVC];
    if (!hidd_le_env.enabled) {
        ESP_LOGE(HID_LE_PRF_TAG, "HID device profile already initialized");
        return ESP_OK;
    }

    if(hidd_svc_hdl != 0) {
 esp_ble_gatts_stop_service(hidd_svc_hdl);
 esp_ble_gatts_delete_service(hidd_svc_hdl);
    } else {
 return ESP_FAIL;
   }


    esp_ble_gatts_app_unregister(hidd_le_env.gatt_if);

    return ESP_OK;
}
