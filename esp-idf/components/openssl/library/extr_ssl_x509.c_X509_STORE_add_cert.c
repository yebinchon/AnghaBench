
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_STORE ;
struct TYPE_6__ {struct TYPE_6__* client_CA; int ref_counter; } ;
typedef TYPE_1__ X509 ;
typedef TYPE_1__ SSL_CTX ;


 int SSL_ASSERT1 (TYPE_1__*) ;
 int X509_free (TYPE_1__*) ;

int X509_STORE_add_cert(X509_STORE *store, X509 *x) {

    x->ref_counter++;

    SSL_CTX *ctx = (SSL_CTX *)store;
    SSL_ASSERT1(ctx);
    SSL_ASSERT1(x);

    if (ctx->client_CA == x) {
        return 1;
    }

    if (ctx->client_CA!=((void*)0)) {
        X509_free(ctx->client_CA);
    }

    ctx->client_CA = x;
    return 1;
}
