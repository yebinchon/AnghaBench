#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {int /*<<< orphan*/  version; int /*<<< orphan*/ * cert; int /*<<< orphan*/ * client_CA; TYPE_1__ const* method; } ;
struct TYPE_5__ {int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ SSL_METHOD ;
typedef  TYPE_2__ SSL_CTX ;
typedef  int /*<<< orphan*/  CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SSL_LIB_ERROR_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

SSL_CTX* FUNC6(const SSL_METHOD *method)
{
    SSL_CTX *ctx;
    CERT *cert;
    X509 *client_ca;

    if (!method) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "no no_method");
        return NULL;
    }

    client_ca = FUNC2();
    if (!client_ca) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "X509_new() return NULL");
        goto failed1;
    }

    cert = FUNC4();
    if (!cert) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "ssl_cert_new() return NULL");
        goto failed2;
    }

    ctx = (SSL_CTX *)FUNC5(sizeof(SSL_CTX));
    if (!ctx) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "no enough memory > (ctx)");
        goto failed3;
    }

    ctx->method = method;
    ctx->client_CA = client_ca;
    ctx->cert = cert;

    ctx->version = method->version;

    return ctx;

failed3:
    FUNC3(cert);
failed2:
    FUNC1(client_ca);
failed1:
    return NULL;
}