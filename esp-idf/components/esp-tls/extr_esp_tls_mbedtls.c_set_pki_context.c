
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int error_handle; int * pk_key; int * public_cert; int conf; int privkey_pem_bytes; int * privkey_pem_buf; int publiccert_pem_bytes; int * publiccert_pem_buf; } ;
typedef TYPE_1__ const esp_tls_t ;
typedef TYPE_1__ esp_tls_pki_t ;
typedef int esp_err_t ;


 int ERR_TYPE_MBEDTLS ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_MBEDTLS_PK_PARSE_KEY_FAILED ;
 int ESP_ERR_MBEDTLS_SSL_CONF_OWN_CERT_FAILED ;
 int ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int TAG ;
 int assert (TYPE_1__ const*) ;
 int mbedtls_pk_init (int *) ;
 int mbedtls_pk_parse_key (int *,int *,int ,int *,int ) ;
 int mbedtls_ssl_conf_own_cert (int *,int *,int *) ;
 int mbedtls_x509_crt_init (int *) ;
 int mbedtls_x509_crt_parse (int *,int *,int ) ;

__attribute__((used)) static esp_err_t set_pki_context(esp_tls_t *tls, const esp_tls_pki_t *pki)
{
    assert(tls);
    assert(pki);
    int ret;

    if (pki->publiccert_pem_buf != ((void*)0) &&
        pki->privkey_pem_buf != ((void*)0) &&
        pki->public_cert != ((void*)0) &&
        pki->pk_key != ((void*)0)) {

        mbedtls_x509_crt_init(pki->public_cert);
        mbedtls_pk_init(pki->pk_key);

        ret = mbedtls_x509_crt_parse(pki->public_cert, pki->publiccert_pem_buf, pki->publiccert_pem_bytes);
        if (ret < 0) {
            ESP_LOGE(TAG, "mbedtls_x509_crt_parse returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED;
        }

        ret = mbedtls_pk_parse_key(pki->pk_key, pki->privkey_pem_buf, pki->privkey_pem_bytes,
                                   ((void*)0), 0);
        if (ret < 0) {
            ESP_LOGE(TAG, "mbedtls_pk_parse_keyfile returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_PK_PARSE_KEY_FAILED;
        }

        ret = mbedtls_ssl_conf_own_cert(&tls->conf, pki->public_cert, pki->pk_key);
        if (ret < 0) {
            ESP_LOGE(TAG, "mbedtls_ssl_conf_own_cert returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_SSL_CONF_OWN_CERT_FAILED;
        }
    } else {
        return ESP_ERR_INVALID_ARG;
    }
    return ESP_OK;
}
