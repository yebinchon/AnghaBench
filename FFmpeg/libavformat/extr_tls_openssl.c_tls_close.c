
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_5__ {scalar_t__ tcp; } ;
struct TYPE_7__ {scalar_t__ url_bio_method; TYPE_1__ tls_shared; scalar_t__ ctx; scalar_t__ ssl; } ;
typedef TYPE_3__ TLSContext ;


 int BIO_meth_free (scalar_t__) ;
 int SSL_CTX_free (scalar_t__) ;
 int SSL_free (scalar_t__) ;
 int SSL_shutdown (scalar_t__) ;
 int ff_openssl_deinit () ;
 int ffurl_close (scalar_t__) ;

__attribute__((used)) static int tls_close(URLContext *h)
{
    TLSContext *c = h->priv_data;
    if (c->ssl) {
        SSL_shutdown(c->ssl);
        SSL_free(c->ssl);
    }
    if (c->ctx)
        SSL_CTX_free(c->ctx);
    if (c->tls_shared.tcp)
        ffurl_close(c->tls_shared.tcp);




    ff_openssl_deinit();
    return 0;
}
