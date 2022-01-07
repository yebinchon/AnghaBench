
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int * g_wpa_password ;
 int g_wpa_password_len ;
 int os_free (int *) ;
 int os_memcpy (int *,unsigned char const*,int) ;
 scalar_t__ os_zalloc (int) ;

esp_err_t esp_wifi_sta_wpa2_ent_set_password(const unsigned char *password, int len)
{
    if (len <= 0) {
        return ESP_ERR_INVALID_ARG;
    }

    if (g_wpa_password) {
        os_free(g_wpa_password);
        g_wpa_password = ((void*)0);
    }

    g_wpa_password = (u8 *)os_zalloc(len);
    if (g_wpa_password == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }

    os_memcpy(g_wpa_password, password, len);
    g_wpa_password_len = len;

    return ESP_OK;
}
