
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_MBEDTLS_CERT_PARTLY_OK ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_OK ;
 int TAG ;
 int esp_mbedtls_init_global_ca_store () ;
 int * global_cacert ;
 int mbedtls_x509_crt_free (int *) ;
 int mbedtls_x509_crt_parse (int *,unsigned char const*,unsigned int const) ;

esp_err_t esp_mbedtls_set_global_ca_store(const unsigned char *cacert_pem_buf, const unsigned int cacert_pem_bytes)
{
    if (cacert_pem_buf == ((void*)0)) {
        ESP_LOGE(TAG, "cacert_pem_buf is null");
        return ESP_ERR_INVALID_ARG;
    }
    int ret;
    if (global_cacert == ((void*)0)) {
        ret = esp_mbedtls_init_global_ca_store();
        if (ret != ESP_OK) {
            return ret;
        }
    }
    ret = mbedtls_x509_crt_parse(global_cacert, cacert_pem_buf, cacert_pem_bytes);
    if (ret < 0) {
        ESP_LOGE(TAG, "mbedtls_x509_crt_parse returned -0x%x", -ret);
        mbedtls_x509_crt_free(global_cacert);
        global_cacert = ((void*)0);
        return ESP_FAIL;
    } else if (ret > 0) {
        ESP_LOGE(TAG, "mbedtls_x509_crt_parse was partly successful. No. of failed certificates: %d", ret);
        return ESP_ERR_MBEDTLS_CERT_PARTLY_OK;
    }
    return ESP_OK;
}
