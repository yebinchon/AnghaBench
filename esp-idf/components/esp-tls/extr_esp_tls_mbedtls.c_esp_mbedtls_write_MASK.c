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
typedef  size_t ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  error_handle; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ esp_tls_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_ESP ; 
 int /*<<< orphan*/  ERR_TYPE_MBEDTLS ; 
 size_t ESP_ERR_MBEDTLS_SSL_WRITE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t ESP_TLS_ERR_SSL_WANT_READ ; 
 size_t ESP_TLS_ERR_SSL_WANT_WRITE ; 
 size_t MBEDTLS_SSL_OUT_CONTENT_LEN ; 
 int /*<<< orphan*/  TAG ; 
 size_t FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

ssize_t FUNC4(esp_tls_t *tls, const char *data, size_t datalen)
{
    size_t written = 0;
    size_t write_len = datalen;
    while (written < datalen) {
        if (write_len > MBEDTLS_SSL_OUT_CONTENT_LEN) {
            write_len = MBEDTLS_SSL_OUT_CONTENT_LEN;
        }
        if (datalen > MBEDTLS_SSL_OUT_CONTENT_LEN) {
            FUNC1(TAG, "Fragmenting data of excessive size :%d, offset: %d, size %d", datalen, written, write_len);
        }
        ssize_t ret = FUNC3(&tls->ssl, (unsigned char*) data + written, write_len);
        if (ret <= 0) {
            if (ret != ESP_TLS_ERR_SSL_WANT_READ  && ret != ESP_TLS_ERR_SSL_WANT_WRITE && ret != 0) {
                FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS, -ret);
                FUNC0(tls->error_handle, ERR_TYPE_ESP, ESP_ERR_MBEDTLS_SSL_WRITE_FAILED);
                FUNC2(TAG, "write error :%d:", ret);
                return ret;
            } else {
                // Exitting the tls-write process as less than desired datalen are writable
                FUNC1(TAG, "mbedtls_ssl_write() returned %d, already written %d, exitting...", ret, written);
                return written;
            }
        }
        written += ret;
        write_len = datalen - written;
    }
    return written;
}