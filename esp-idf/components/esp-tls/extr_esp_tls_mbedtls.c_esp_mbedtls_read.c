
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int error_handle; int ssl; } ;
typedef TYPE_1__ esp_tls_t ;


 int ERR_TYPE_MBEDTLS ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int ) ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_TLS_ERR_SSL_WANT_READ ;
 int ESP_TLS_ERR_SSL_WANT_WRITE ;
 int MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY ;
 int TAG ;
 int mbedtls_ssl_read (int *,unsigned char*,size_t) ;

ssize_t esp_mbedtls_read(esp_tls_t *tls, char *data, size_t datalen)
{

    ssize_t ret = mbedtls_ssl_read(&tls->ssl, (unsigned char *)data, datalen);
    if (ret < 0) {
        if (ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY) {
            return 0;
        }
        if (ret != ESP_TLS_ERR_SSL_WANT_READ && ret != ESP_TLS_ERR_SSL_WANT_WRITE) {
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            ESP_LOGE(TAG, "read error :%d:", ret);
        }
    }
    return ret;
}
