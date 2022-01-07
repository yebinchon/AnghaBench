
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tls_config {int dummy; } ;
struct tls {int dummy; } ;
struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {int tcp; int host; int listen; int verify; scalar_t__ key_file; scalar_t__ cert_file; scalar_t__ ca_file; } ;
struct TYPE_11__ {struct tls* ctx; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 int TLS_PROTOCOLS_ALL ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int ff_tls_close (TYPE_1__*) ;
 int ff_tls_open_underlying (TYPE_2__*,TYPE_1__*,char const*,int **) ;
 int tls_accept_cbs (struct tls*,struct tls**,int ,int ,int ) ;
 struct tls* tls_client () ;
 int tls_config_error (struct tls_config*) ;
 int tls_config_free (struct tls_config*) ;
 int tls_config_insecure_noverifycert (struct tls_config*) ;
 int tls_config_insecure_noverifyname (struct tls_config*) ;
 int tls_config_insecure_noverifytime (struct tls_config*) ;
 struct tls_config* tls_config_new () ;
 int tls_config_set_ca_file (struct tls_config*,scalar_t__) ;
 int tls_config_set_cert_file (struct tls_config*,scalar_t__) ;
 int tls_config_set_ciphers (struct tls_config*,char*) ;
 int tls_config_set_key_file (struct tls_config*,scalar_t__) ;
 int tls_config_set_protocols (struct tls_config*,int ) ;
 int tls_configure (struct tls*,struct tls_config*) ;
 int tls_connect_cbs (struct tls*,int ,int ,int ,int ) ;
 int tls_error (struct tls*) ;
 int tls_free (struct tls*) ;
 int tls_init () ;
 int tls_read_callback ;
 struct tls* tls_server () ;
 int tls_write_callback ;

__attribute__((used)) static int ff_tls_open(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *p = h->priv_data;
    TLSShared *c = &p->tls_shared;
    struct tls_config *cfg = ((void*)0);
    int ret;

    if (tls_init() == -1) {
        ret = AVERROR(EIO);
        goto fail;
    }

    if ((ret = ff_tls_open_underlying(c, h, uri, options)) < 0)
        goto fail;

    p->ctx = !c->listen ? tls_client() : tls_server();
    if (!p->ctx) {
        ret = AVERROR(EIO);
        goto fail;
    }

    cfg = tls_config_new();
    if (!p->ctx) {
        ret = AVERROR(EIO);
        goto fail;
    }
    if (tls_config_set_protocols(cfg, TLS_PROTOCOLS_ALL) == -1)
        goto err_config;


    if (tls_config_set_ciphers(cfg, "compat") == -1)
        goto err_config;
    if (c->ca_file && tls_config_set_ca_file(cfg, c->ca_file) == -1)
        goto err_config;
    if (c->cert_file && tls_config_set_cert_file(cfg, c->cert_file) == -1)
        goto err_config;
    if (c->key_file && tls_config_set_key_file(cfg, c->key_file) == -1)
        goto err_config;
    if (!c->verify) {
        tls_config_insecure_noverifycert(cfg);
        tls_config_insecure_noverifyname(cfg);
        tls_config_insecure_noverifytime(cfg);
    }
    if (tls_configure(p->ctx, cfg) == -1)
        goto err_ctx;

    if (!c->listen) {
        ret = tls_connect_cbs(p->ctx, tls_read_callback, tls_write_callback,
            c->tcp, c->host);
    } else {
        struct tls *ctx_new;
        ret = tls_accept_cbs(p->ctx, &ctx_new, tls_read_callback,
            tls_write_callback, c->tcp);
        if (ret == 0) {

            tls_free(p->ctx);
            p->ctx = ctx_new;
        }
    }
    if (ret == -1)
        goto err_ctx;

    tls_config_free(cfg);
    return 0;
err_config:
    av_log(h, AV_LOG_ERROR, "%s\n", tls_config_error(cfg));
    ret = AVERROR(EIO);
    goto fail;
err_ctx:
    av_log(h, AV_LOG_ERROR, "%s\n", tls_error(p->ctx));
    ret = AVERROR(EIO);

fail:
    if (cfg)
        tls_config_free(cfg);
    ff_tls_close(h);
    return ret;
}
