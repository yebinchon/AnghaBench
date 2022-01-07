
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_handle; int ssl; } ;
typedef TYPE_1__ esp_tls_t ;
typedef int buf ;


 int ERR_TYPE_MBEDTLS_CERT_FLAGS ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int bzero (char*,int) ;
 int mbedtls_ssl_get_verify_result (int *) ;
 int mbedtls_x509_crt_verify_info (char*,int,char*,int) ;

void esp_mbedtls_verify_certificate(esp_tls_t *tls)
{
    int flags;
    char buf[100];
    if ((flags = mbedtls_ssl_get_verify_result(&tls->ssl)) != 0) {
        ESP_LOGI(TAG, "Failed to verify peer certificate!");
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS_CERT_FLAGS, flags);
        bzero(buf, sizeof(buf));
        mbedtls_x509_crt_verify_info(buf, sizeof(buf), "  ! ", flags);
        ESP_LOGI(TAG, "verification info: %s", buf);
    } else {
        ESP_LOGI(TAG, "Certificate verified.");
    }
}
