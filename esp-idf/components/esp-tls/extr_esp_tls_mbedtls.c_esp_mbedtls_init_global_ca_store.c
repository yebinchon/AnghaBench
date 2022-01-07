
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509_crt ;
typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 scalar_t__ calloc (int,int) ;
 int * global_cacert ;
 int mbedtls_x509_crt_init (int *) ;

esp_err_t esp_mbedtls_init_global_ca_store(void)
{
    if (global_cacert == ((void*)0)) {
        global_cacert = (mbedtls_x509_crt *)calloc(1, sizeof(mbedtls_x509_crt));
        if (global_cacert == ((void*)0)) {
            ESP_LOGE(TAG, "global_cacert not allocated");
            return ESP_ERR_NO_MEM;
        }
        mbedtls_x509_crt_init(global_cacert);
    }
    return ESP_OK;
}
