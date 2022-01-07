
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_prov_scan_ctx_t ;
typedef int uint16_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int wifi_prov_mgr_wifi_scan_finished () ;
 int wifi_prov_mgr_wifi_scan_result_count () ;

__attribute__((used)) static esp_err_t scan_status(bool *scan_finished,
                             uint16_t *result_count,
                             wifi_prov_scan_ctx_t **ctx)
{
    *scan_finished = wifi_prov_mgr_wifi_scan_finished();
    *result_count = wifi_prov_mgr_wifi_scan_result_count();
    return ESP_OK;
}
