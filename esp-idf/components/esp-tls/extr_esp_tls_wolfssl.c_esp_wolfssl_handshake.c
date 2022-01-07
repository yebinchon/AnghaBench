
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int conn_state; int error_handle; scalar_t__ priv_ssl; } ;
typedef TYPE_1__ esp_tls_t ;
struct TYPE_7__ {int use_global_ca_store; int * cacert_pem_buf; } ;
typedef TYPE_2__ esp_tls_cfg_t ;
typedef int WOLFSSL ;


 int ERR_TYPE_WOLFSSL ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_TLS_DONE ;
 int ESP_TLS_ERR_SSL_WANT_READ ;
 int ESP_TLS_ERR_SSL_WANT_WRITE ;
 int ESP_TLS_FAIL ;
 int TAG ;
 int WOLFSSL_SUCCESS ;
 int esp_wolfssl_verify_certificate (TYPE_1__*) ;
 int wolfSSL_connect (int *) ;
 int wolfSSL_get_error (int *,int) ;

int esp_wolfssl_handshake(esp_tls_t *tls, const esp_tls_cfg_t *cfg)
{
    int ret;
    ret = wolfSSL_connect( (WOLFSSL *)tls->priv_ssl);
    if (ret == WOLFSSL_SUCCESS) {
        tls->conn_state = ESP_TLS_DONE;
        return 1;
    } else {
        int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
        if (err != ESP_TLS_ERR_SSL_WANT_READ && err != ESP_TLS_ERR_SSL_WANT_WRITE) {
            ESP_LOGE(TAG, "wolfSSL_connect returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);

            if (cfg->cacert_pem_buf != ((void*)0) || cfg->use_global_ca_store == 1) {

                esp_wolfssl_verify_certificate(tls);
            }
            tls->conn_state = ESP_TLS_FAIL;
            return -1;
        }


        return 0;
    }
}
