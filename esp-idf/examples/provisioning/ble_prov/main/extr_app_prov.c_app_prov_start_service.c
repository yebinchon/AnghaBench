
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {char* member_0; int member_1; } ;
typedef TYPE_1__ protocomm_ble_name_uuid_t ;
struct TYPE_6__ {int nu_lookup_count; int device_name; TYPE_1__* nu_lookup; int service_uuid; } ;
typedef TYPE_2__ protocomm_ble_config_t ;
typedef int nu_lookup_table ;
typedef scalar_t__ esp_err_t ;
struct TYPE_7__ {int security; int * pc; int * pop; } ;


 int ESP_BT_MODE_CLASSIC_BT ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int WIFI_IF_STA ;
 scalar_t__ esp_bt_controller_mem_release (int ) ;
 int esp_wifi_get_mac (int ,int*) ;
 TYPE_4__* g_prov ;
 scalar_t__ protocomm_add_endpoint (int *,char*,int ,void*) ;
 scalar_t__ protocomm_ble_start (int *,TYPE_2__*) ;
 int protocomm_ble_stop (int *) ;
 int * protocomm_new () ;
 int protocomm_security0 ;
 int protocomm_security1 ;
 int protocomm_set_security (int *,char*,int *,int *) ;
 int protocomm_set_version (int *,char*,char*) ;
 int snprintf (int ,int,char*,char*,int,int,int) ;
 char* ssid_prefix ;
 int wifi_prov_config_data_handler ;
 int wifi_prov_handlers ;

__attribute__((used)) static esp_err_t app_prov_start_service(void)
{

    g_prov->pc = protocomm_new();
    if (g_prov->pc == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to create new protocomm instance");
        return ESP_FAIL;
    }


    protocomm_ble_name_uuid_t nu_lookup_table[] = {
        {"prov-session", 0x0001},
        {"prov-config", 0x0002},
        {"proto-ver", 0x0003},
    };


    protocomm_ble_config_t config = {
        .service_uuid = {


            0xb4, 0xdf, 0x5a, 0x1c, 0x3f, 0x6b, 0xf4, 0xbf,
            0xea, 0x4a, 0x82, 0x03, 0x04, 0x90, 0x1a, 0x02,
        },
        .nu_lookup_count = sizeof(nu_lookup_table)/sizeof(nu_lookup_table[0]),
        .nu_lookup = nu_lookup_table
    };
    uint8_t eth_mac[6];
    esp_wifi_get_mac(WIFI_IF_STA, eth_mac);
    snprintf(config.device_name, sizeof(config.device_name), "%s%02X%02X%02X",
             ssid_prefix, eth_mac[3], eth_mac[4], eth_mac[5]);


    esp_err_t err = esp_bt_controller_mem_release(ESP_BT_MODE_CLASSIC_BT);
    if (err) {
        ESP_LOGE(TAG, "bt_controller_mem_release failed %d", err);
        if (err != ESP_ERR_INVALID_STATE) {
            return err;
        }
    }


    if (protocomm_ble_start(g_prov->pc, &config) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to start BLE provisioning");
        return ESP_FAIL;
    }


    protocomm_set_version(g_prov->pc, "proto-ver", "V0.1");


    if (g_prov->security == 0) {
        protocomm_set_security(g_prov->pc, "prov-session", &protocomm_security0, ((void*)0));
    } else if (g_prov->security == 1) {
        protocomm_set_security(g_prov->pc, "prov-session", &protocomm_security1, g_prov->pop);
    }


    if (protocomm_add_endpoint(g_prov->pc, "prov-config",
                               wifi_prov_config_data_handler,
                               (void *) &wifi_prov_handlers) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set provisioning endpoint");
        protocomm_ble_stop(g_prov->pc);
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Provisioning started with BLE devname : '%s'", config.device_name);
    return ESP_OK;
}
