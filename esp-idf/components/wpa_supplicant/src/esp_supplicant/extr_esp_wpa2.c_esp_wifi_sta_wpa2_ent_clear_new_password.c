
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_wpa_new_password ;
 scalar_t__ g_wpa_new_password_len ;
 int os_free (int *) ;

void esp_wifi_sta_wpa2_ent_clear_new_password(void)
{
    if (g_wpa_new_password) {
        os_free(g_wpa_new_password);
    }
    g_wpa_new_password = ((void*)0);
    g_wpa_new_password_len = 0;
}
