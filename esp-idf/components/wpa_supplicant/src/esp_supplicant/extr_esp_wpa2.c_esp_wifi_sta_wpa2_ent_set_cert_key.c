
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 unsigned char const* g_wpa_client_cert ;
 int g_wpa_client_cert_len ;
 unsigned char const* g_wpa_private_key ;
 int g_wpa_private_key_len ;
 unsigned char const* g_wpa_private_key_passwd ;
 int g_wpa_private_key_passwd_len ;

esp_err_t esp_wifi_sta_wpa2_ent_set_cert_key(const unsigned char *client_cert, int client_cert_len, const unsigned char *private_key, int private_key_len, const unsigned char *private_key_passwd, int private_key_passwd_len)
{
    if (client_cert && client_cert_len > 0) {
        g_wpa_client_cert = client_cert;
        g_wpa_client_cert_len = client_cert_len;
    }
    if (private_key && private_key_len > 0) {
        g_wpa_private_key = private_key;
        g_wpa_private_key_len = private_key_len;
    }
    if (private_key_passwd && private_key_passwd_len > 0) {
        g_wpa_private_key_passwd = private_key_passwd;
        g_wpa_private_key_passwd_len = private_key_passwd_len;
    }

    return ESP_OK;
}
