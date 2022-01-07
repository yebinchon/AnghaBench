
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_wifi_unregister_wpa2_cb_internal () ;
 int * g_wpa_client_cert ;
 scalar_t__ g_wpa_client_cert_len ;
 int * g_wpa_private_key ;
 scalar_t__ g_wpa_private_key_len ;
 int * g_wpa_private_key_passwd ;
 scalar_t__ g_wpa_private_key_passwd_len ;

void esp_wifi_sta_wpa2_ent_clear_cert_key(void)
{
    esp_wifi_unregister_wpa2_cb_internal();

    g_wpa_client_cert = ((void*)0);
    g_wpa_client_cert_len = 0;
    g_wpa_private_key = ((void*)0);
    g_wpa_private_key_len = 0;
    g_wpa_private_key_passwd = ((void*)0);
    g_wpa_private_key_passwd_len = 0;
}
