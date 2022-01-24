#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tls_config {int dummy; } ;
struct tls {int dummy; } ;
struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_10__ {int /*<<< orphan*/  tcp; int /*<<< orphan*/  host; int /*<<< orphan*/  listen; int /*<<< orphan*/  verify; scalar_t__ key_file; scalar_t__ cert_file; scalar_t__ ca_file; } ;
struct TYPE_11__ {struct tls* ctx; TYPE_2__ tls_shared; } ;
typedef  TYPE_2__ TLSShared ;
typedef  TYPE_3__ TLSContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  TLS_PROTOCOLS_ALL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 int FUNC4 (struct tls*,struct tls**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tls* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct tls_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct tls_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct tls_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct tls_config*) ; 
 int /*<<< orphan*/  FUNC10 (struct tls_config*) ; 
 struct tls_config* FUNC11 () ; 
 int FUNC12 (struct tls_config*,scalar_t__) ; 
 int FUNC13 (struct tls_config*,scalar_t__) ; 
 int FUNC14 (struct tls_config*,char*) ; 
 int FUNC15 (struct tls_config*,scalar_t__) ; 
 int FUNC16 (struct tls_config*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct tls*,struct tls_config*) ; 
 int FUNC18 (struct tls*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tls*) ; 
 int /*<<< orphan*/  FUNC20 (struct tls*) ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  tls_read_callback ; 
 struct tls* FUNC22 () ; 
 int /*<<< orphan*/  tls_write_callback ; 

__attribute__((used)) static int FUNC23(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *p = h->priv_data;
    TLSShared *c = &p->tls_shared;
    struct tls_config *cfg = NULL;
    int ret;

    if (FUNC21() == -1) {
        ret = FUNC0(EIO);
        goto fail;
    }

    if ((ret = FUNC3(c, h, uri, options)) < 0)
        goto fail;

    p->ctx = !c->listen ? FUNC5() : FUNC22();
    if (!p->ctx) {
        ret = FUNC0(EIO);
        goto fail;
    }

    cfg = FUNC11();
    if (!p->ctx) {
        ret = FUNC0(EIO);
        goto fail;
    }
    if (FUNC16(cfg, TLS_PROTOCOLS_ALL) == -1)
        goto err_config;
    // While TLSv1.0 and TLSv1.1 are already enabled by the above,
    // we need to be less strict with ciphers so it works in practice.
    if (FUNC14(cfg, "compat") == -1)
        goto err_config;
    if (c->ca_file && FUNC12(cfg, c->ca_file) == -1)
        goto err_config;
    if (c->cert_file && FUNC13(cfg, c->cert_file) == -1)
        goto err_config;
    if (c->key_file && FUNC15(cfg, c->key_file) == -1)
        goto err_config;
    if (!c->verify) {
        FUNC8(cfg);
        FUNC9(cfg);
        FUNC10(cfg);
    }
    if (FUNC17(p->ctx, cfg) == -1)
        goto err_ctx;

    if (!c->listen) {
        ret = FUNC18(p->ctx, tls_read_callback, tls_write_callback,
            c->tcp, c->host);
    } else {
        struct tls *ctx_new;
        ret = FUNC4(p->ctx, &ctx_new, tls_read_callback,
            tls_write_callback, c->tcp);
        if (ret == 0) {
            // free "server" context and replace by "connection" context
            FUNC20(p->ctx);
            p->ctx = ctx_new;
        }
    }
    if (ret == -1)
        goto err_ctx;

    FUNC7(cfg);
    return 0;
err_config:
    FUNC1(h, AV_LOG_ERROR, "%s\n", FUNC6(cfg));
    ret = FUNC0(EIO);
    goto fail;
err_ctx:
    FUNC1(h, AV_LOG_ERROR, "%s\n", FUNC19(p->ctx));
    ret = FUNC0(EIO);
    /* fallthrough */
fail:
    if (cfg)
        FUNC7(cfg);
    FUNC2(h);
    return ret;
}