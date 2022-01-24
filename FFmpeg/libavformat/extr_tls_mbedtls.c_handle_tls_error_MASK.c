#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
#define  MBEDTLS_ERR_NET_CONN_RESET 133 
#define  MBEDTLS_ERR_NET_RECV_FAILED 132 
#define  MBEDTLS_ERR_NET_SEND_FAILED 131 
#define  MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY 130 
#define  MBEDTLS_ERR_SSL_WANT_READ 129 
#define  MBEDTLS_ERR_SSL_WANT_WRITE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int FUNC2(URLContext *h, const char* func_name, int ret)
{
    switch (ret) {
    case MBEDTLS_ERR_SSL_WANT_READ:
    case MBEDTLS_ERR_SSL_WANT_WRITE:
        return FUNC0(EAGAIN);
    case MBEDTLS_ERR_NET_SEND_FAILED:
    case MBEDTLS_ERR_NET_RECV_FAILED:
        return FUNC0(EIO);
    case MBEDTLS_ERR_NET_CONN_RESET:
    case MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY:
        FUNC1(h, AV_LOG_WARNING, "%s reported connection reset by peer\n", func_name);
        return AVERROR_EOF;
    default:
        FUNC1(h, AV_LOG_ERROR, "%s returned -0x%x\n", func_name, -ret);
        return FUNC0(EIO);
    }
}