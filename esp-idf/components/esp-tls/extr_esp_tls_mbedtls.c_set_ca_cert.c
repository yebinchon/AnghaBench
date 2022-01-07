
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cacert_ptr; int conf; int error_handle; int cacert; } ;
typedef TYPE_1__ esp_tls_t ;
typedef int esp_err_t ;


 int ERR_TYPE_MBEDTLS ;
 int ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int MBEDTLS_SSL_VERIFY_REQUIRED ;
 int TAG ;
 int assert (TYPE_1__*) ;
 int mbedtls_ssl_conf_authmode (int *,int ) ;
 int mbedtls_ssl_conf_ca_chain (int *,int *,int *) ;
 int mbedtls_x509_crt_init (int *) ;
 int mbedtls_x509_crt_parse (int *,unsigned char const*,size_t) ;

__attribute__((used)) static esp_err_t set_ca_cert(esp_tls_t *tls, const unsigned char *cacert, size_t cacert_len)
{
    assert(tls);
    tls->cacert_ptr = &tls->cacert;
    mbedtls_x509_crt_init(tls->cacert_ptr);
    int ret = mbedtls_x509_crt_parse(tls->cacert_ptr, cacert, cacert_len);
    if (ret < 0) {
        ESP_LOGE(TAG, "mbedtls_x509_crt_parse returned -0x%x", -ret);
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
        return ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED;
    }
    mbedtls_ssl_conf_authmode(&tls->conf, MBEDTLS_SSL_VERIFY_REQUIRED);
    mbedtls_ssl_conf_ca_chain(&tls->conf, tls->cacert_ptr, ((void*)0));
    return ESP_OK;
}
