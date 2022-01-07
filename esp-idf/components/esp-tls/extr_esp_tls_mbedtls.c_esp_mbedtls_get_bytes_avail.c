
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int ssl; } ;
typedef TYPE_1__ esp_tls_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int mbedtls_ssl_get_bytes_avail (int *) ;

ssize_t esp_mbedtls_get_bytes_avail(esp_tls_t *tls)
{
    if (!tls) {
        ESP_LOGE(TAG, "empty arg passed to esp_tls_get_bytes_avail()");
        return ESP_FAIL;
    }
    return mbedtls_ssl_get_bytes_avail(&tls->ssl);
}
