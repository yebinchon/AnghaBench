
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_18__ {int ptr; } ;
struct TYPE_16__ {scalar_t__ listen; int host; int numerichost; int tcp; scalar_t__ verify; scalar_t__ key_file; scalar_t__ cert_file; scalar_t__ ca_file; } ;
struct TYPE_17__ {int ssl; int * url_bio_method; int ctx; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef TYPE_4__ BIO ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int BIO_TYPE_SOURCE_SINK ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int *,int ) ;
 int BIO_meth_set_ctrl (int *,int ) ;
 int BIO_meth_set_destroy (int *,int ) ;
 int BIO_meth_set_puts (int *,int ) ;
 int BIO_meth_set_read (int *,int ) ;
 int BIO_meth_set_write (int *,int ) ;
 TYPE_4__* BIO_new (int *) ;
 int BIO_set_data (TYPE_4__*,int ) ;
 int EIO ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int SSL_CTX_load_verify_locations (int ,scalar_t__,int *) ;
 int SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (int ,int) ;
 int SSL_CTX_set_verify (int ,int,int *) ;
 int SSL_CTX_use_PrivateKey_file (int ,scalar_t__,int ) ;
 int SSL_CTX_use_certificate_chain_file (int ,scalar_t__) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_PEER ;
 int SSL_accept (int ) ;
 int SSL_connect (int ) ;
 int SSL_new (int ) ;
 int SSL_set_bio (int ,TYPE_4__*,TYPE_4__*) ;
 int SSL_set_tlsext_host_name (int ,int ) ;
 int SSLv23_client_method () ;
 int SSLv23_server_method () ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int ff_openssl_init () ;
 int ff_tls_open_underlying (TYPE_2__*,TYPE_1__*,char const*,int **) ;
 int print_tls_error (TYPE_1__*,int) ;
 int tls_close (TYPE_1__*) ;
 int url_bio_bputs ;
 int url_bio_bread ;
 int url_bio_bwrite ;
 int url_bio_create ;
 int url_bio_ctrl ;
 int url_bio_destroy ;
 int url_bio_method ;

__attribute__((used)) static int tls_open(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *p = h->priv_data;
    TLSShared *c = &p->tls_shared;
    BIO *bio;
    int ret;

    if ((ret = ff_openssl_init()) < 0)
        return ret;

    if ((ret = ff_tls_open_underlying(c, h, uri, options)) < 0)
        goto fail;





    p->ctx = SSL_CTX_new(c->listen ? SSLv23_server_method() : SSLv23_client_method());
    if (!p->ctx) {
        av_log(h, AV_LOG_ERROR, "%s\n", ERR_error_string(ERR_get_error(), ((void*)0)));
        ret = AVERROR(EIO);
        goto fail;
    }
    SSL_CTX_set_options(p->ctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);
    if (c->ca_file) {
        if (!SSL_CTX_load_verify_locations(p->ctx, c->ca_file, ((void*)0)))
            av_log(h, AV_LOG_ERROR, "SSL_CTX_load_verify_locations %s\n", ERR_error_string(ERR_get_error(), ((void*)0)));
    }
    if (c->cert_file && !SSL_CTX_use_certificate_chain_file(p->ctx, c->cert_file)) {
        av_log(h, AV_LOG_ERROR, "Unable to load cert file %s: %s\n",
               c->cert_file, ERR_error_string(ERR_get_error(), ((void*)0)));
        ret = AVERROR(EIO);
        goto fail;
    }
    if (c->key_file && !SSL_CTX_use_PrivateKey_file(p->ctx, c->key_file, SSL_FILETYPE_PEM)) {
        av_log(h, AV_LOG_ERROR, "Unable to load key file %s: %s\n",
               c->key_file, ERR_error_string(ERR_get_error(), ((void*)0)));
        ret = AVERROR(EIO);
        goto fail;
    }


    if (c->verify)
        SSL_CTX_set_verify(p->ctx, SSL_VERIFY_PEER|SSL_VERIFY_FAIL_IF_NO_PEER_CERT, ((void*)0));
    p->ssl = SSL_new(p->ctx);
    if (!p->ssl) {
        av_log(h, AV_LOG_ERROR, "%s\n", ERR_error_string(ERR_get_error(), ((void*)0)));
        ret = AVERROR(EIO);
        goto fail;
    }
    bio = BIO_new(&url_bio_method);
    bio->ptr = c->tcp;

    SSL_set_bio(p->ssl, bio, bio);
    if (!c->listen && !c->numerichost)
        SSL_set_tlsext_host_name(p->ssl, c->host);
    ret = c->listen ? SSL_accept(p->ssl) : SSL_connect(p->ssl);
    if (ret == 0) {
        av_log(h, AV_LOG_ERROR, "Unable to negotiate TLS/SSL session\n");
        ret = AVERROR(EIO);
        goto fail;
    } else if (ret < 0) {
        ret = print_tls_error(h, ret);
        goto fail;
    }

    return 0;
fail:
    tls_close(h);
    return ret;
}
