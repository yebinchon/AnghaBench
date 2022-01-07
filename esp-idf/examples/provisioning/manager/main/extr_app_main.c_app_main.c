
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wifi_prov_security_t ;
struct TYPE_3__ {int scheme_event_handler; int scheme; } ;
typedef TYPE_1__ wifi_prov_mgr_config_t ;
typedef int wifi_init_config_t ;
typedef int uint8_t ;
typedef int service_name ;
typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGI (int ,char*) ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int TAG ;
 int WIFI_CONNECTED_EVENT ;
 int WIFI_EVENT ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_PROV_EVENT ;
 int WIFI_PROV_SCHEME_BLE_EVENT_HANDLER_FREE_BTDM ;
 int WIFI_PROV_SECURITY_1 ;
 scalar_t__ esp_event_handler_register (int ,int ,int *,int *) ;
 scalar_t__ esp_event_loop_create_default () ;
 int esp_netif_create_default_wifi_sta () ;
 int esp_netif_init () ;
 scalar_t__ esp_wifi_init (int *) ;
 int event_handler ;
 int get_device_service_name (char*,int) ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 int vTaskDelay (int) ;
 int wifi_event_group ;
 int wifi_init_sta () ;
 int wifi_prov_mgr_deinit () ;
 scalar_t__ wifi_prov_mgr_init (TYPE_1__) ;
 scalar_t__ wifi_prov_mgr_is_provisioned (int*) ;
 scalar_t__ wifi_prov_mgr_start_provisioning (int ,char const*,char*,char const*) ;
 int wifi_prov_scheme_ble ;
 int wifi_prov_scheme_ble_set_service_uuid (int*) ;
 int xEventGroupCreate () ;
 int xEventGroupWaitBits (int ,int ,int,int,int ) ;

void app_main(void)
{

    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {


        ESP_ERROR_CHECK(nvs_flash_erase());


        ESP_ERROR_CHECK(nvs_flash_init());
    }


    esp_netif_init();


    ESP_ERROR_CHECK(esp_event_loop_create_default());
    wifi_event_group = xEventGroupCreate();


    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_PROV_EVENT, ESP_EVENT_ANY_ID, &event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, ((void*)0)));


    esp_netif_create_default_wifi_sta();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));


    wifi_prov_mgr_config_t config = {


        .scheme = wifi_prov_scheme_ble,
        .scheme_event_handler = WIFI_PROV_SCHEME_BLE_EVENT_HANDLER_FREE_BTDM
    };



    ESP_ERROR_CHECK(wifi_prov_mgr_init(config));

    bool provisioned = 0;

    ESP_ERROR_CHECK(wifi_prov_mgr_is_provisioned(&provisioned));


    if (!provisioned) {
        ESP_LOGI(TAG, "Starting provisioning");






        char service_name[12];
        get_device_service_name(service_name, sizeof(service_name));







        wifi_prov_security_t security = WIFI_PROV_SECURITY_1;





        const char *pop = "abcd1234";






        const char *service_key = ((void*)0);
        uint8_t custom_service_uuid[] = {


            0x21, 0x43, 0x65, 0x87, 0x09, 0xba, 0xdc, 0xfe,
            0xef, 0xcd, 0xab, 0x90, 0x78, 0x56, 0x34, 0x12
        };
        wifi_prov_scheme_ble_set_service_uuid(custom_service_uuid);


        ESP_ERROR_CHECK(wifi_prov_mgr_start_provisioning(security, pop, service_name, service_key));






    } else {
        ESP_LOGI(TAG, "Already provisioned, starting Wi-Fi STA");



        wifi_prov_mgr_deinit();


        wifi_init_sta();
    }


    xEventGroupWaitBits(wifi_event_group, WIFI_CONNECTED_EVENT, 0, 1, portMAX_DELAY);


    while (1) {
        ESP_LOGI(TAG, "Hello World!");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
