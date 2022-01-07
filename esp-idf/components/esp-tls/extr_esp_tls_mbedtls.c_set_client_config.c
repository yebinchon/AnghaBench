
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int clientkey; int clientcert; int conf; int error_handle; int cacert_ptr; int ssl; } ;
typedef TYPE_2__ esp_tls_t ;
struct TYPE_13__ {int privkey_password_len; int privkey_password; int privkey_pem_bytes; int * privkey_pem_buf; int publiccert_pem_bytes; int * publiccert_pem_buf; int * pk_key; int * public_cert; } ;
typedef TYPE_3__ esp_tls_pki_t ;
struct TYPE_14__ {char const* common_name; int use_global_ca_store; int * clientkey_buf; int * clientcert_buf; int clientkey_password_len; int clientkey_password; int clientkey_bytes; int clientcert_bytes; TYPE_1__* psk_hint_key; int cacert_bytes; int * cacert_buf; scalar_t__ alpn_protos; int skip_common_name; } ;
typedef TYPE_4__ esp_tls_cfg_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_11__ {char const* hint; int key_size; int key; } ;


 int ERR_TYPE_MBEDTLS ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_MBEDTLS_SSL_CONFIG_DEFAULTS_FAILED ;
 scalar_t__ ESP_ERR_MBEDTLS_SSL_CONF_ALPN_PROTOCOLS_FAILED ;
 scalar_t__ ESP_ERR_MBEDTLS_SSL_CONF_PSK_FAILED ;
 scalar_t__ ESP_ERR_MBEDTLS_SSL_SET_HOSTNAME_FAILED ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int MBEDTLS_SSL_IS_CLIENT ;
 int MBEDTLS_SSL_PRESET_DEFAULT ;
 int MBEDTLS_SSL_TRANSPORT_STREAM ;
 int MBEDTLS_SSL_VERIFY_NONE ;
 int TAG ;
 int assert (int ) ;
 int free (char*) ;
 scalar_t__ mbedtls_ssl_conf_alpn_protocols (int *,scalar_t__) ;
 int mbedtls_ssl_conf_authmode (int *,int ) ;
 int mbedtls_ssl_conf_ca_chain (int *,int ,int *) ;
 int mbedtls_ssl_conf_psk (int *,int ,int ,unsigned char const*,size_t) ;
 int mbedtls_ssl_config_defaults (int *,int ,int ,int ) ;
 int mbedtls_ssl_set_hostname (int *,char*) ;
 scalar_t__ set_ca_cert (TYPE_2__*,int *,int ) ;
 scalar_t__ set_global_ca_store (TYPE_2__*) ;
 scalar_t__ set_pki_context (TYPE_2__*,TYPE_3__*) ;
 size_t strlen (char const*) ;
 char* strndup (char const*,size_t) ;

esp_err_t set_client_config(const char *hostname, size_t hostlen, esp_tls_cfg_t *cfg, esp_tls_t *tls)
{
    assert(cfg != ((void*)0));
    assert(tls != ((void*)0));
    int ret;
    if (!cfg->skip_common_name) {
        char *use_host = ((void*)0);
        if (cfg->common_name != ((void*)0)) {
            use_host = strndup(cfg->common_name, strlen(cfg->common_name));
        } else {
            use_host = strndup(hostname, hostlen);
        }

        if (use_host == ((void*)0)) {
            return ESP_ERR_NO_MEM;
        }

        if ((ret = mbedtls_ssl_set_hostname(&tls->ssl, use_host)) != 0) {
            ESP_LOGE(TAG, "mbedtls_ssl_set_hostname returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            free(use_host);
            return ESP_ERR_MBEDTLS_SSL_SET_HOSTNAME_FAILED;
        }
        free(use_host);
    }

    if ((ret = mbedtls_ssl_config_defaults(&tls->conf,
                                           MBEDTLS_SSL_IS_CLIENT,
                                           MBEDTLS_SSL_TRANSPORT_STREAM,
                                           MBEDTLS_SSL_PRESET_DEFAULT)) != 0) {
        ESP_LOGE(TAG, "mbedtls_ssl_config_defaults returned -0x%x", -ret);
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
        return ESP_ERR_MBEDTLS_SSL_CONFIG_DEFAULTS_FAILED;
    }
    if (cfg->use_global_ca_store == 1) {
        esp_err_t esp_ret = set_global_ca_store(tls);
        if (esp_ret != ESP_OK) {
            return esp_ret;
        }
    } else if (cfg->cacert_buf != ((void*)0)) {
        esp_err_t esp_ret = set_ca_cert(tls, cfg->cacert_buf, cfg->cacert_bytes);
        if (esp_ret != ESP_OK) {
            return esp_ret;
        }
        mbedtls_ssl_conf_ca_chain(&tls->conf, tls->cacert_ptr, ((void*)0));
    } else if (cfg->psk_hint_key) {
        ESP_LOGE(TAG, "psk_hint_key configured but not enabled in menuconfig: Please enable ESP_TLS_PSK_VERIFICATION option");
        return ESP_ERR_INVALID_STATE;

    } else {
        mbedtls_ssl_conf_authmode(&tls->conf, MBEDTLS_SSL_VERIFY_NONE);
    }

    if (cfg->clientcert_buf != ((void*)0) && cfg->clientkey_buf != ((void*)0)) {
        esp_tls_pki_t pki = {
            .public_cert = &tls->clientcert,
            .pk_key = &tls->clientkey,
            .publiccert_pem_buf = cfg->clientcert_buf,
            .publiccert_pem_bytes = cfg->clientcert_bytes,
            .privkey_pem_buf = cfg->clientkey_buf,
            .privkey_pem_bytes = cfg->clientkey_bytes,
            .privkey_password = cfg->clientkey_password,
            .privkey_password_len = cfg->clientkey_password_len,
        };
        esp_err_t esp_ret = set_pki_context(tls, &pki);
        if (esp_ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to set client pki context");
            return esp_ret;
        }
    } else if (cfg->clientcert_buf != ((void*)0) || cfg->clientkey_buf != ((void*)0)) {
        ESP_LOGE(TAG, "You have to provide both clientcert_buf and clientkey_buf for mutual authentication");
        return ESP_ERR_INVALID_STATE;
    }
    return ESP_OK;
}
