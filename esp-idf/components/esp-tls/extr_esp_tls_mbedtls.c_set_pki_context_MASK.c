#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  error_handle; int /*<<< orphan*/ * pk_key; int /*<<< orphan*/ * public_cert; int /*<<< orphan*/  conf; int /*<<< orphan*/  privkey_pem_bytes; int /*<<< orphan*/ * privkey_pem_buf; int /*<<< orphan*/  publiccert_pem_bytes; int /*<<< orphan*/ * publiccert_pem_buf; } ;
typedef  TYPE_1__ const esp_tls_t ;
typedef  TYPE_1__ esp_tls_pki_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_MBEDTLS ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_MBEDTLS_PK_PARSE_KEY_FAILED ; 
 int /*<<< orphan*/  ESP_ERR_MBEDTLS_SSL_CONF_OWN_CERT_FAILED ; 
 int /*<<< orphan*/  ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC8(esp_tls_t *tls, const esp_tls_pki_t *pki)
{
    FUNC2(tls);
    FUNC2(pki);
    int ret;

    if (pki->publiccert_pem_buf != NULL &&
        pki->privkey_pem_buf != NULL &&
        pki->public_cert != NULL &&
        pki->pk_key != NULL) {

        FUNC6(pki->public_cert);
        FUNC3(pki->pk_key);

        ret = FUNC7(pki->public_cert, pki->publiccert_pem_buf, pki->publiccert_pem_bytes);
        if (ret < 0) {
            FUNC1(TAG, "mbedtls_x509_crt_parse returned -0x%x", -ret);
            FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED;
        }

        ret = FUNC4(pki->pk_key, pki->privkey_pem_buf, pki->privkey_pem_bytes,
                                   NULL, 0);
        if (ret < 0) {
            FUNC1(TAG, "mbedtls_pk_parse_keyfile returned -0x%x", -ret);
            FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_PK_PARSE_KEY_FAILED;
        }

        ret = FUNC5(&tls->conf, pki->public_cert, pki->pk_key);
        if (ret < 0) {
            FUNC1(TAG, "mbedtls_ssl_conf_own_cert returned -0x%x", -ret);
            FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
            return ESP_ERR_MBEDTLS_SSL_CONF_OWN_CERT_FAILED;
        }
    } else {
        return ESP_ERR_INVALID_ARG;
    }
    return ESP_OK;
}