#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct x509_pm {int /*<<< orphan*/ * ex_crt; } ;
struct ssl_pm {int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  mbedtls_x509_crt ;
struct TYPE_8__ {TYPE_2__* session; scalar_t__ ssl_pm; } ;
struct TYPE_7__ {TYPE_1__* peer; } ;
struct TYPE_6__ {scalar_t__ x509_pm; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_WANT_READ ; 
 int MBEDTLS_ERR_SSL_WANT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  SSL_PLATFORM_ERROR_LEVEL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(SSL *ssl)
{
    int ret;
    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    ret = FUNC3(ssl);
    if (ret)
        return 0;

    FUNC4();

    while((ret = FUNC1(&ssl_pm->ssl)) != 0) {
        if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
           break;
        }
    }

    FUNC5();

    if (ret) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_handshake() return -0x%x", -ret);
        ret = 0;
    } else {
        struct x509_pm *x509_pm = (struct x509_pm *)ssl->session->peer->x509_pm;

        x509_pm->ex_crt = (mbedtls_x509_crt *)FUNC2(&ssl_pm->ssl);
        ret = 1;
    }

    return ret;
}