
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int conn_state; int error_handle; int ssl; } ;
typedef TYPE_1__ esp_tls_t ;
struct TYPE_7__ {int use_global_ca_store; int * cacert_buf; } ;
typedef TYPE_2__ esp_tls_cfg_t ;


 int ERR_TYPE_ESP ;
 int ERR_TYPE_MBEDTLS ;
 int ESP_ERR_MBEDTLS_SSL_HANDSHAKE_FAILED ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_TLS_DONE ;
 int ESP_TLS_ERR_SSL_WANT_READ ;
 int ESP_TLS_ERR_SSL_WANT_WRITE ;
 int ESP_TLS_FAIL ;
 int TAG ;
 int esp_mbedtls_verify_certificate (TYPE_1__*) ;
 int mbedtls_ssl_handshake (int *) ;

int esp_mbedtls_handshake(esp_tls_t *tls, const esp_tls_cfg_t *cfg)
{
    int ret;
    ret = mbedtls_ssl_handshake(&tls->ssl);
    if (ret == 0) {
        tls->conn_state = ESP_TLS_DONE;
        return 1;
    } else {
        if (ret != ESP_TLS_ERR_SSL_WANT_READ && ret != ESP_TLS_ERR_SSL_WANT_WRITE) {
            ESP_LOGE(TAG, "mbedtls_ssl_handshake returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_ESP, ESP_ERR_MBEDTLS_SSL_HANDSHAKE_FAILED);
            if (cfg->cacert_buf != ((void*)0) || cfg->use_global_ca_store == 1) {

                esp_mbedtls_verify_certificate(tls);
            }
            tls->conn_state = ESP_TLS_FAIL;
            return -1;
        }


        return 0;
    }
}
