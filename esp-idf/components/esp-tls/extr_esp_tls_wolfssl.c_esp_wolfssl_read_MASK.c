#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  error_handle; scalar_t__ priv_ssl; } ;
typedef  TYPE_1__ esp_tls_t ;
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_WOLFSSL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_TLS_ERR_SSL_WANT_READ ; 
 int /*<<< orphan*/  ESP_TLS_ERR_SSL_WANT_WRITE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WOLFSSL_ERROR_ZERO_RETURN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

ssize_t FUNC4(esp_tls_t *tls, char *data, size_t datalen)
{
    ssize_t ret = FUNC3( (WOLFSSL *)tls->priv_ssl, (unsigned char *)data, datalen);
    if (ret < 0) {
        ret = FUNC2( (WOLFSSL *)tls->priv_ssl, ret);
        /* peer sent close notify */
        if (ret == WOLFSSL_ERROR_ZERO_RETURN) {
            return 0;
        }

        if (ret != ESP_TLS_ERR_SSL_WANT_READ && ret != ESP_TLS_ERR_SSL_WANT_WRITE) {
            FUNC0(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
            FUNC1(TAG, "read error :%d:", ret);
        }
    }
    return ret;
}