
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cacert_ptr; int conf; } ;
typedef TYPE_1__ esp_tls_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int MBEDTLS_SSL_VERIFY_REQUIRED ;
 int TAG ;
 int assert (TYPE_1__*) ;
 int * global_cacert ;
 int mbedtls_ssl_conf_authmode (int *,int ) ;
 int mbedtls_ssl_conf_ca_chain (int *,int *,int *) ;

__attribute__((used)) static esp_err_t set_global_ca_store(esp_tls_t *tls)
{
    assert(tls);
    if (global_cacert == ((void*)0)) {
        ESP_LOGE(TAG, "global_cacert is NULL");
        return ESP_ERR_INVALID_STATE;
    }
    tls->cacert_ptr = global_cacert;
    mbedtls_ssl_conf_authmode(&tls->conf, MBEDTLS_SSL_VERIFY_REQUIRED);
    mbedtls_ssl_conf_ca_chain(&tls->conf, tls->cacert_ptr, ((void*)0));
    return ESP_OK;
}
