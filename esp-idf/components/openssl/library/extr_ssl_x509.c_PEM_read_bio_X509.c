
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int dlen; int data; } ;
typedef TYPE_1__ BIO ;


 int SSL_ASSERT2 (int ) ;
 int SSL_DEBUG (int ,char*,...) ;
 int SSL_PKEY_ERROR_LEVEL ;
 int X509_METHOD_CALL (int ,int *,int ,int ) ;
 int X509_free (int *) ;
 int * X509_new () ;
 int load ;

X509 * PEM_read_bio_X509(BIO *bp, X509 **cert, void *cb, void *u) {
    int m = 0;
    int ret;
    X509 *x;

    SSL_ASSERT2(bp->data);
    SSL_ASSERT2(bp->dlen);

    if (cert && *cert) {
        x = *cert;
    } else {
        x = X509_new();
        if (!x) {
            SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "X509_new() return NULL");
            goto failed;
        }
        m = 1;
    }

    ret = X509_METHOD_CALL(load, x, bp->data, bp->dlen);
    if (ret) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "X509_METHOD_CALL(load) return %d", ret);
        goto failed;
    }

    return x;

failed:
    if (m) {
        X509_free(x);
    }

    return ((void*)0);
}
