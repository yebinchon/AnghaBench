
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_prov_scan_ctx_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_err_t ;


 int wifi_prov_mgr_wifi_scan_start (int,int,int ,int ) ;

__attribute__((used)) static esp_err_t scan_start(bool blocking, bool passive,
                            uint8_t group_channels, uint32_t period_ms,
                            wifi_prov_scan_ctx_t **ctx)
{
    return wifi_prov_mgr_wifi_scan_start(blocking, passive, group_channels, period_ms);
}
