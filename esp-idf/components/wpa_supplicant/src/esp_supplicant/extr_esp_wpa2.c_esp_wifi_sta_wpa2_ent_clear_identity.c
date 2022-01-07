
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_wpa_anonymous_identity ;
 scalar_t__ g_wpa_anonymous_identity_len ;
 int os_free (int *) ;

void esp_wifi_sta_wpa2_ent_clear_identity(void)
{
    if (g_wpa_anonymous_identity) {
        os_free(g_wpa_anonymous_identity);
    }

    g_wpa_anonymous_identity = ((void*)0);
    g_wpa_anonymous_identity_len = 0;
}
