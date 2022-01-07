
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 unsigned char const* g_wpa_ca_cert ;
 int g_wpa_ca_cert_len ;

esp_err_t esp_wifi_sta_wpa2_ent_set_ca_cert(const unsigned char *ca_cert, int ca_cert_len)
{
    if (ca_cert && ca_cert_len > 0) {
        g_wpa_ca_cert = ca_cert;
        g_wpa_ca_cert_len = ca_cert_len;
    }

    return ESP_OK;
}
