
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_tls_t ;
typedef int esp_tls_cfg_t ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;
 scalar_t__ calloc (int,int) ;
 int esp_tls_conn_delete (int *) ;
 int esp_tls_low_level_conn (char const*,int,int,int const*,int *) ;

esp_tls_t *esp_tls_conn_new(const char *hostname, int hostlen, int port, const esp_tls_cfg_t *cfg)
{
    esp_tls_t *tls = (esp_tls_t *)calloc(1, sizeof(esp_tls_t));
    if (!tls) {
        return ((void*)0);
    }


    while (1) {
        int ret = esp_tls_low_level_conn(hostname, hostlen, port, cfg, tls);
        if (ret == 1) {
            return tls;
        } else if (ret == -1) {
            esp_tls_conn_delete(tls);
            ESP_LOGE(TAG, "Failed to open new connection");
            return ((void*)0);
        }
    }
    return ((void*)0);
}
