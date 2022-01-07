
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ priv_ssl; } ;
typedef TYPE_1__ esp_tls_t ;
typedef int WOLFSSL ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int wolfSSL_pending (int *) ;

ssize_t esp_wolfssl_get_bytes_avail(esp_tls_t *tls)
{
    if (!tls) {
        ESP_LOGE(TAG, "empty arg passed to esp_tls_get_bytes_avail()");
        return ESP_FAIL;
    }
    return wolfSSL_pending( (WOLFSSL *)tls->priv_ssl);
}
