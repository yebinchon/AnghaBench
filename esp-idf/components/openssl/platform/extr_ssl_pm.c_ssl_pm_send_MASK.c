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
struct ssl_pm {int /*<<< orphan*/  ssl; } ;
struct TYPE_3__ {scalar_t__ ssl_pm; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  SSL_PLATFORM_ERROR_LEVEL ; 
 int FUNC1 (int /*<<< orphan*/ *,void const*,int) ; 

int FUNC2(SSL *ssl, const void *buffer, int len)
{
    int ret;
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    ret = FUNC1(&ssl_pm->ssl, buffer, len);
    if (ret < 0) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_write() return -0x%x", -ret);
        ret = -1;
    }

    return ret;
}