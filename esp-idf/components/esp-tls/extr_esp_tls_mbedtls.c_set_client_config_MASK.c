#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  clientkey; int /*<<< orphan*/  clientcert; int /*<<< orphan*/  conf; int /*<<< orphan*/  error_handle; int /*<<< orphan*/  cacert_ptr; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_2__ esp_tls_t ;
struct TYPE_13__ {int /*<<< orphan*/  privkey_password_len; int /*<<< orphan*/  privkey_password; int /*<<< orphan*/  privkey_pem_bytes; int /*<<< orphan*/ * privkey_pem_buf; int /*<<< orphan*/  publiccert_pem_bytes; int /*<<< orphan*/ * publiccert_pem_buf; int /*<<< orphan*/ * pk_key; int /*<<< orphan*/ * public_cert; } ;
typedef  TYPE_3__ esp_tls_pki_t ;
struct TYPE_14__ {char const* common_name; int use_global_ca_store; int /*<<< orphan*/ * clientkey_buf; int /*<<< orphan*/ * clientcert_buf; int /*<<< orphan*/  clientkey_password_len; int /*<<< orphan*/  clientkey_password; int /*<<< orphan*/  clientkey_bytes; int /*<<< orphan*/  clientcert_bytes; TYPE_1__* psk_hint_key; int /*<<< orphan*/  cacert_bytes; int /*<<< orphan*/ * cacert_buf; scalar_t__ alpn_protos; int /*<<< orphan*/  skip_common_name; } ;
typedef  TYPE_4__ esp_tls_cfg_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_11__ {char const* hint; int /*<<< orphan*/  key_size; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_MBEDTLS ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_MBEDTLS_SSL_CONFIG_DEFAULTS_FAILED ; 
 scalar_t__ ESP_ERR_MBEDTLS_SSL_CONF_ALPN_PROTOCOLS_FAILED ; 
 scalar_t__ ESP_ERR_MBEDTLS_SSL_CONF_PSK_FAILED ; 
 scalar_t__ ESP_ERR_MBEDTLS_SSL_SET_HOSTNAME_FAILED ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MBEDTLS_SSL_IS_CLIENT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_PRESET_DEFAULT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_TRANSPORT_STREAM ; 
 int /*<<< orphan*/  MBEDTLS_SSL_VERIFY_NONE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_3__*) ; 
 size_t FUNC14 (char const*) ; 
 char* FUNC15 (char const*,size_t) ; 

esp_err_t FUNC16(const char *hostname, size_t hostlen, esp_tls_cfg_t *cfg, esp_tls_t *tls)
{
    FUNC3(cfg != NULL);
    FUNC3(tls != NULL);
    int ret;
    if (!cfg->skip_common_name) {
        char *use_host = NULL;
        if (cfg->common_name != NULL) {
            use_host = FUNC15(cfg->common_name, FUNC14(cfg->common_name));
        } else {
            use_host = FUNC15(hostname, hostlen);
        }

        if (use_host == NULL) {
            return ESP_ERR_NO_MEM;
        }
        /* Hostname set here should match CN in server certificate */
        if ((ret = FUNC10(&tls->ssl, use_host)) != 0) {
            FUNC2(TAG, "mbedtls_ssl_set_hostname returned -0x%x", -ret);
            FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            FUNC4(use_host);
            return ESP_ERR_MBEDTLS_SSL_SET_HOSTNAME_FAILED;
        }
        FUNC4(use_host);
    }

    if ((ret = FUNC9(&tls->conf,
                                           MBEDTLS_SSL_IS_CLIENT,
                                           MBEDTLS_SSL_TRANSPORT_STREAM,
                                           MBEDTLS_SSL_PRESET_DEFAULT)) != 0) {
        FUNC2(TAG, "mbedtls_ssl_config_defaults returned -0x%x", -ret);
        FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
        return ESP_ERR_MBEDTLS_SSL_CONFIG_DEFAULTS_FAILED;
    }

#ifdef CONFIG_MBEDTLS_SSL_ALPN
    if (cfg->alpn_protos) {
        if ((ret = mbedtls_ssl_conf_alpn_protocols(&tls->conf, cfg->alpn_protos) != 0)) {
            ESP_LOGE(TAG, "mbedtls_ssl_conf_alpn_protocols returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_SSL_CONF_ALPN_PROTOCOLS_FAILED;
        }
    }
#endif
    if (cfg->use_global_ca_store == true) {
        esp_err_t esp_ret = FUNC12(tls);
        if (esp_ret != ESP_OK) {
            return esp_ret;
        }
    } else if (cfg->cacert_buf != NULL) {
        esp_err_t esp_ret = FUNC11(tls, cfg->cacert_buf, cfg->cacert_bytes);
        if (esp_ret != ESP_OK) {
            return esp_ret;
        }
        FUNC7(&tls->conf, tls->cacert_ptr, NULL);
    } else if (cfg->psk_hint_key) {
#if defined(CONFIG_ESP_TLS_PSK_VERIFICATION)
        //
        // PSK encryption mode is configured only if no certificate supplied and psk pointer not null
        ESP_LOGD(TAG, "ssl psk authentication");
        ret = mbedtls_ssl_conf_psk(&tls->conf, cfg->psk_hint_key->key, cfg->psk_hint_key->key_size,
                                   (const unsigned char *)cfg->psk_hint_key->hint, strlen(cfg->psk_hint_key->hint));
        if (ret != 0) {
            ESP_LOGE(TAG, "mbedtls_ssl_conf_psk returned -0x%x", -ret);
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_SSL_CONF_PSK_FAILED;
        }
#else
        FUNC2(TAG, "psk_hint_key configured but not enabled in menuconfig: Please enable ESP_TLS_PSK_VERIFICATION option");
        return ESP_ERR_INVALID_STATE;
#endif
    } else {
        FUNC6(&tls->conf, MBEDTLS_SSL_VERIFY_NONE);
    }

    if (cfg->clientcert_buf != NULL && cfg->clientkey_buf != NULL) {
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
        esp_err_t esp_ret = FUNC13(tls, &pki);
        if (esp_ret != ESP_OK) {
            FUNC2(TAG, "Failed to set client pki context");
            return esp_ret;
        }
    } else if (cfg->clientcert_buf != NULL || cfg->clientkey_buf != NULL) {
        FUNC2(TAG, "You have to provide both clientcert_buf and clientkey_buf for mutual authentication");
        return ESP_ERR_INVALID_STATE;
    }
    return ESP_OK;
}