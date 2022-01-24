#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * cacert_ptr; int /*<<< orphan*/  conf; int /*<<< orphan*/  error_handle; int /*<<< orphan*/  cacert; } ;
typedef  TYPE_1__ esp_tls_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_MBEDTLS ; 
 int /*<<< orphan*/  ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  MBEDTLS_SSL_VERIFY_REQUIRED ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

__attribute__((used)) static esp_err_t FUNC7(esp_tls_t *tls, const unsigned char *cacert, size_t cacert_len)
{
    FUNC2(tls);
    tls->cacert_ptr = &tls->cacert;
    FUNC5(tls->cacert_ptr);
    int ret = FUNC6(tls->cacert_ptr, cacert, cacert_len);
    if (ret < 0) {
        FUNC1(TAG, "mbedtls_x509_crt_parse returned -0x%x", -ret);
        FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
        return ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED;
    }
    FUNC3(&tls->conf, MBEDTLS_SSL_VERIFY_REQUIRED);
    FUNC4(&tls->conf, tls->cacert_ptr, NULL);
    return ESP_OK;
}