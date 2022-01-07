
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * wifi_netif_driver_t ;
typedef int wifi_interface_t ;
typedef int esp_netif_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int esp_netif_attach (int *,int *) ;
 int * esp_wifi_create_if_driver (int ) ;

__attribute__((used)) static esp_err_t create_and_attach(wifi_interface_t wifi_if, esp_netif_t* esp_netif)
{
    wifi_netif_driver_t driver = esp_wifi_create_if_driver(wifi_if);
    if (driver == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to create wifi interface handle");
        return ESP_FAIL;
    }
    return esp_netif_attach(esp_netif, driver);
}
