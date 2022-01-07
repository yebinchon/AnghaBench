
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fd; } ;
struct TYPE_7__ {scalar_t__ role; TYPE_4__ server_fd; int ssl; int error_handle; int conf; int ctr_drbg; int entropy; int sockfd; } ;
typedef TYPE_1__ esp_tls_t ;
typedef int esp_tls_cfg_t ;
typedef int esp_tls_cfg_server_t ;
typedef scalar_t__ esp_err_t ;


 int CONFIG_MBEDTLS_DEBUG_LEVEL ;
 int ERR_TYPE_MBEDTLS ;
 scalar_t__ ESP_ERR_MBEDTLS_CTR_DRBG_SEED_FAILED ;
 scalar_t__ ESP_ERR_MBEDTLS_SSL_SETUP_FAILED ;
 scalar_t__ ESP_FAIL ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_TLS_CLIENT ;
 scalar_t__ ESP_TLS_SERVER ;
 int TAG ;
 int assert (int ) ;
 int esp_mbedtls_cleanup (TYPE_1__*) ;
 int mbedtls_ctr_drbg_init (int *) ;
 int mbedtls_ctr_drbg_random ;
 int mbedtls_ctr_drbg_seed (int *,int ,int *,int *,int ) ;
 int mbedtls_entropy_func ;
 int mbedtls_entropy_init (int *) ;
 int mbedtls_esp_enable_debug_log (int *,int ) ;
 int mbedtls_net_recv ;
 int mbedtls_net_send ;
 int mbedtls_ssl_conf_rng (int *,int ,int *) ;
 int mbedtls_ssl_config_init (int *) ;
 int mbedtls_ssl_init (int *) ;
 int mbedtls_ssl_set_bio (int *,TYPE_4__*,int ,int ,int *) ;
 int mbedtls_ssl_setup (int *,int *) ;
 scalar_t__ set_client_config (char const*,size_t,int *,TYPE_1__*) ;
 scalar_t__ set_server_config (int *,TYPE_1__*) ;

esp_err_t esp_create_mbedtls_handle(const char *hostname, size_t hostlen, const void *cfg, esp_tls_t *tls)
{
    assert(cfg != ((void*)0));
    assert(tls != ((void*)0));
    int ret;
    esp_err_t esp_ret = ESP_FAIL;
    tls->server_fd.fd = tls->sockfd;
    mbedtls_ssl_init(&tls->ssl);
    mbedtls_ctr_drbg_init(&tls->ctr_drbg);
    mbedtls_ssl_config_init(&tls->conf);
    mbedtls_entropy_init(&tls->entropy);

    if (tls->role == ESP_TLS_CLIENT) {
        esp_ret = set_client_config(hostname, hostlen, (esp_tls_cfg_t *)cfg, tls);
        if (esp_ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to set client configurations");
            goto exit;
        }
    } else if (tls->role == ESP_TLS_SERVER) {







            ESP_LOGE(TAG, "ESP_TLS_SERVER Not enabled in Kconfig");
            goto exit;

    }

    if ((ret = mbedtls_ctr_drbg_seed(&tls->ctr_drbg,
                                     mbedtls_entropy_func, &tls->entropy, ((void*)0), 0)) != 0) {
        ESP_LOGE(TAG, "mbedtls_ctr_drbg_seed returned -0x%x", -ret);
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
        esp_ret = ESP_ERR_MBEDTLS_CTR_DRBG_SEED_FAILED;
        goto exit;
    }

    mbedtls_ssl_conf_rng(&tls->conf, mbedtls_ctr_drbg_random, &tls->ctr_drbg);





    if ((ret = mbedtls_ssl_setup(&tls->ssl, &tls->conf)) != 0) {
        ESP_LOGE(TAG, "mbedtls_ssl_setup returned -0x%x", -ret);
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
        esp_ret = ESP_ERR_MBEDTLS_SSL_SETUP_FAILED;
        goto exit;
    }
    mbedtls_ssl_set_bio(&tls->ssl, &tls->server_fd, mbedtls_net_send, mbedtls_net_recv, ((void*)0));

    return ESP_OK;

exit:
    esp_mbedtls_cleanup(tls);
    return esp_ret;

}
