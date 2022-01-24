#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct x509_pm {scalar_t__ ex_crt; scalar_t__ x509_crt; } ;
struct ssl_pm {int /*<<< orphan*/  conf; } ;
struct pkey_pm {scalar_t__ ex_pkey; scalar_t__ pkey; } ;
struct TYPE_11__ {int verify_mode; TYPE_4__* cert; TYPE_1__* client_CA; struct ssl_pm* ssl_pm; } ;
struct TYPE_10__ {TYPE_3__* x509; TYPE_2__* pkey; } ;
struct TYPE_9__ {scalar_t__ x509_pm; } ;
struct TYPE_8__ {scalar_t__ pkey_pm; } ;
struct TYPE_7__ {scalar_t__ x509_pm; } ;
typedef  TYPE_5__ SSL ;

/* Variables and functions */
 int MBEDTLS_SSL_VERIFY_NONE ; 
 int MBEDTLS_SSL_VERIFY_OPTIONAL ; 
 int MBEDTLS_SSL_VERIFY_REQUIRED ; 
 int MBEDTLS_SSL_VERIFY_UNSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  SSL_PLATFORM_ERROR_LEVEL ; 
 int SSL_VERIFY_CLIENT_ONCE ; 
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ; 
 int SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(SSL *ssl)
{
    int ret;
    int mode;
    struct ssl_pm *ssl_pm = ssl->ssl_pm;
    struct x509_pm *ca_pm = (struct x509_pm *)ssl->client_CA->x509_pm;

    struct pkey_pm *pkey_pm = (struct pkey_pm *)ssl->cert->pkey->pkey_pm;
    struct x509_pm *crt_pm = (struct x509_pm *)ssl->cert->x509->x509_pm;

    if (ssl->verify_mode & SSL_VERIFY_FAIL_IF_NO_PEER_CERT)
        mode = MBEDTLS_SSL_VERIFY_REQUIRED;
    else if (ssl->verify_mode & SSL_VERIFY_PEER)
        mode = MBEDTLS_SSL_VERIFY_OPTIONAL;
    else if (ssl->verify_mode & SSL_VERIFY_CLIENT_ONCE)
        mode = MBEDTLS_SSL_VERIFY_UNSET;
    else
        mode = MBEDTLS_SSL_VERIFY_NONE;

    FUNC1(&ssl_pm->conf, mode);

    if (ca_pm->x509_crt) {
        FUNC2(&ssl_pm->conf, ca_pm->x509_crt, NULL);
    } else if (ca_pm->ex_crt) {
        FUNC2(&ssl_pm->conf, ca_pm->ex_crt, NULL);
    }

    if (crt_pm->x509_crt && pkey_pm->pkey) {
        ret = FUNC3(&ssl_pm->conf, crt_pm->x509_crt, pkey_pm->pkey);
    } else if (crt_pm->ex_crt && pkey_pm->ex_pkey) {
        ret = FUNC3(&ssl_pm->conf, crt_pm->ex_crt, pkey_pm->ex_pkey);
    } else {
        ret = 0;
    }

    if (ret) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_conf_own_cert() return -0x%x", -ret);
        ret = -1;
    }

    return ret;
}