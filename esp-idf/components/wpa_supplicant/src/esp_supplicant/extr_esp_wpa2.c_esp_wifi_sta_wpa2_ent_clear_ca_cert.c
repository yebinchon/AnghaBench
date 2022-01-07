
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_wpa_ca_cert ;
 scalar_t__ g_wpa_ca_cert_len ;

void esp_wifi_sta_wpa2_ent_clear_ca_cert(void)
{
    g_wpa_ca_cert = ((void*)0);
    g_wpa_ca_cert_len = 0;
}
