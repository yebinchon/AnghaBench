#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  session; int /*<<< orphan*/  cert; int /*<<< orphan*/  client_CA; int /*<<< orphan*/  rwstate; int /*<<< orphan*/  verify_mode; int /*<<< orphan*/  options; int /*<<< orphan*/  version; int /*<<< orphan*/  method; TYPE_1__* ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  verify_mode; int /*<<< orphan*/  options; int /*<<< orphan*/  version; int /*<<< orphan*/  method; int /*<<< orphan*/  client_CA; int /*<<< orphan*/  cert; } ;
typedef  TYPE_1__ SSL_CTX ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_LIB_ERROR_LEVEL ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  SSL_NOTHING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  new ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int) ; 

SSL *FUNC10(SSL_CTX *ctx)
{
    int ret = 0;
    SSL *ssl;

    if (!ctx) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "no ctx");
        return NULL;
    }

    ssl = (SSL *)FUNC9(sizeof(SSL));
    if (!ssl) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "no enough memory > (ssl)");
        goto failed1;
    }

    ssl->session = FUNC3();
    if (!ssl->session) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "SSL_SESSION_new() return NULL");
        goto failed2;
    }

    ssl->cert = FUNC6(ctx->cert);
    if (!ssl->cert) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "__ssl_cert_new() return NULL");
        goto failed3;
    }

    ssl->client_CA = FUNC5(ctx->client_CA);
    if (!ssl->client_CA) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "__X509_new() return NULL");
        goto failed4;
    }

    ssl->ctx = ctx;
    ssl->method = ctx->method;

    ssl->version = ctx->version;
    ssl->options = ctx->options;

    ssl->verify_mode = ctx->verify_mode;

    ret = FUNC1(new, ssl);
    if (ret) {
        FUNC0(SSL_LIB_ERROR_LEVEL, "SSL_METHOD_CALL(new) return %d", ret);
        goto failed5;
    }

    ssl->rwstate = SSL_NOTHING;

    return ssl;

failed5:
    FUNC4(ssl->client_CA);
failed4:
    FUNC7(ssl->cert);
failed3:
    FUNC2(ssl->session);
failed2:
    FUNC8(ssl);
failed1:
    return NULL;
}