#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_18__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_16__ {scalar_t__ listen; int /*<<< orphan*/  host; int /*<<< orphan*/  numerichost; int /*<<< orphan*/  tcp; scalar_t__ verify; scalar_t__ key_file; scalar_t__ cert_file; scalar_t__ ca_file; } ;
struct TYPE_17__ {int /*<<< orphan*/  ssl; int /*<<< orphan*/ * url_bio_method; int /*<<< orphan*/  ctx; TYPE_2__ tls_shared; } ;
typedef  TYPE_2__ TLSShared ;
typedef  TYPE_3__ TLSContext ;
typedef  TYPE_4__ BIO ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  BIO_TYPE_SOURCE_SINK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ; 
 int SSL_VERIFY_PEER ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC26 () ; 
 int FUNC27 (TYPE_2__*,TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 int FUNC28 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  url_bio_bputs ; 
 int /*<<< orphan*/  url_bio_bread ; 
 int /*<<< orphan*/  url_bio_bwrite ; 
 int /*<<< orphan*/  url_bio_create ; 
 int /*<<< orphan*/  url_bio_ctrl ; 
 int /*<<< orphan*/  url_bio_destroy ; 
 int /*<<< orphan*/  url_bio_method ; 

__attribute__((used)) static int FUNC30(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *p = h->priv_data;
    TLSShared *c = &p->tls_shared;
    BIO *bio;
    int ret;

    if ((ret = FUNC26()) < 0)
        return ret;

    if ((ret = FUNC27(c, h, uri, options)) < 0)
        goto fail;

    // We want to support all versions of TLS >= 1.0, but not the deprecated
    // and insecure SSLv2 and SSLv3.  Despite the name, SSLv23_*_method()
    // enables support for all versions of SSL and TLS, and we then disable
    // support for the old protocols immediately after creating the context.
    p->ctx = FUNC13(c->listen ? FUNC24() : FUNC23());
    if (!p->ctx) {
        FUNC25(h, AV_LOG_ERROR, "%s\n", FUNC10(FUNC11(), NULL));
        ret = FUNC0(EIO);
        goto fail;
    }
    FUNC14(p->ctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);
    if (c->ca_file) {
        if (!FUNC12(p->ctx, c->ca_file, NULL))
            FUNC25(h, AV_LOG_ERROR, "SSL_CTX_load_verify_locations %s\n", FUNC10(FUNC11(), NULL));
    }
    if (c->cert_file && !FUNC17(p->ctx, c->cert_file)) {
        FUNC25(h, AV_LOG_ERROR, "Unable to load cert file %s: %s\n",
               c->cert_file, FUNC10(FUNC11(), NULL));
        ret = FUNC0(EIO);
        goto fail;
    }
    if (c->key_file && !FUNC16(p->ctx, c->key_file, SSL_FILETYPE_PEM)) {
        FUNC25(h, AV_LOG_ERROR, "Unable to load key file %s: %s\n",
               c->key_file, FUNC10(FUNC11(), NULL));
        ret = FUNC0(EIO);
        goto fail;
    }
    // Note, this doesn't check that the peer certificate actually matches
    // the requested hostname.
    if (c->verify)
        FUNC15(p->ctx, SSL_VERIFY_PEER|SSL_VERIFY_FAIL_IF_NO_PEER_CERT, NULL);
    p->ssl = FUNC20(p->ctx);
    if (!p->ssl) {
        FUNC25(h, AV_LOG_ERROR, "%s\n", FUNC10(FUNC11(), NULL));
        ret = FUNC0(EIO);
        goto fail;
    }
#if OPENSSL_VERSION_NUMBER >= 0x1010000fL
    p->url_bio_method = BIO_meth_new(BIO_TYPE_SOURCE_SINK, "urlprotocol bio");
    BIO_meth_set_write(p->url_bio_method, url_bio_bwrite);
    BIO_meth_set_read(p->url_bio_method, url_bio_bread);
    BIO_meth_set_puts(p->url_bio_method, url_bio_bputs);
    BIO_meth_set_ctrl(p->url_bio_method, url_bio_ctrl);
    BIO_meth_set_create(p->url_bio_method, url_bio_create);
    BIO_meth_set_destroy(p->url_bio_method, url_bio_destroy);
    bio = BIO_new(p->url_bio_method);
    BIO_set_data(bio, c->tcp);
#else
    bio = FUNC8(&url_bio_method);
    bio->ptr = c->tcp;
#endif
    FUNC21(p->ssl, bio, bio);
    if (!c->listen && !c->numerichost)
        FUNC22(p->ssl, c->host);
    ret = c->listen ? FUNC18(p->ssl) : FUNC19(p->ssl);
    if (ret == 0) {
        FUNC25(h, AV_LOG_ERROR, "Unable to negotiate TLS/SSL session\n");
        ret = FUNC0(EIO);
        goto fail;
    } else if (ret < 0) {
        ret = FUNC28(h, ret);
        goto fail;
    }

    return 0;
fail:
    FUNC29(h);
    return ret;
}