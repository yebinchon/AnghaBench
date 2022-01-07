
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_3__ {int error_handle; int ssl; } ;
typedef TYPE_1__ esp_tls_t ;


 int ERR_TYPE_ESP ;
 int ERR_TYPE_MBEDTLS ;
 size_t ESP_ERR_MBEDTLS_SSL_WRITE_FAILED ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,size_t) ;
 int ESP_LOGD (int ,char*,size_t,size_t,...) ;
 int ESP_LOGE (int ,char*,size_t) ;
 size_t ESP_TLS_ERR_SSL_WANT_READ ;
 size_t ESP_TLS_ERR_SSL_WANT_WRITE ;
 size_t MBEDTLS_SSL_OUT_CONTENT_LEN ;
 int TAG ;
 size_t mbedtls_ssl_write (int *,unsigned char*,size_t) ;

ssize_t esp_mbedtls_write(esp_tls_t *tls, const char *data, size_t datalen)
{
    size_t written = 0;
    size_t write_len = datalen;
    while (written < datalen) {
        if (write_len > MBEDTLS_SSL_OUT_CONTENT_LEN) {
            write_len = MBEDTLS_SSL_OUT_CONTENT_LEN;
        }
        if (datalen > MBEDTLS_SSL_OUT_CONTENT_LEN) {
            ESP_LOGD(TAG, "Fragmenting data of excessive size :%d, offset: %d, size %d", datalen, written, write_len);
        }
        ssize_t ret = mbedtls_ssl_write(&tls->ssl, (unsigned char*) data + written, write_len);
        if (ret <= 0) {
            if (ret != ESP_TLS_ERR_SSL_WANT_READ && ret != ESP_TLS_ERR_SSL_WANT_WRITE && ret != 0) {
                ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
                ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_ESP, ESP_ERR_MBEDTLS_SSL_WRITE_FAILED);
                ESP_LOGE(TAG, "write error :%d:", ret);
                return ret;
            } else {

                ESP_LOGD(TAG, "mbedtls_ssl_write() returned %d, already written %d, exitting...", ret, written);
                return written;
            }
        }
        written += ret;
        write_len = datalen - written;
    }
    return written;
}
