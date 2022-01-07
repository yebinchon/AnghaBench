
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_tls_t ;
typedef int esp_tls_cfg_t ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int esp_tls_low_level_conn (char const*,int,int,int const*,int *) ;

int esp_tls_conn_new_sync(const char *hostname, int hostlen, int port, const esp_tls_cfg_t *cfg, esp_tls_t *tls)
{


    while (1) {
        int ret = esp_tls_low_level_conn(hostname, hostlen, port, cfg, tls);
        if (ret == 1) {
            return ret;
        } else if (ret == -1) {
            ESP_LOGE(TAG, "Failed to open new connection");
            return -1;
        }
    }
    return 0;
}
