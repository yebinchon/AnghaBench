
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_wpa_username ;
 scalar_t__ g_wpa_username_len ;
 int os_free (int *) ;

void esp_wifi_sta_wpa2_ent_clear_username(void)
{
    if (g_wpa_username) {
        os_free(g_wpa_username);
    }

    g_wpa_username = ((void*)0);
    g_wpa_username_len = 0;
}
