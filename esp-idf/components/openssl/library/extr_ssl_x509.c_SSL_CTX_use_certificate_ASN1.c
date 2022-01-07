
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;


 int SSL_CTX_use_certificate (int *,int *) ;
 int SSL_DEBUG (int ,char*,...) ;
 int SSL_PKEY_ERROR_LEVEL ;
 int X509_free (int *) ;
 int * d2i_X509 (int *,unsigned char const*,int) ;

int SSL_CTX_use_certificate_ASN1(SSL_CTX *ctx, int len,
                                 const unsigned char *d)
{
    int ret;
    X509 *x;

    x = d2i_X509(((void*)0), d, len);
    if (!x) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "d2i_X509() return NULL");
        goto failed1;
    }

    ret = SSL_CTX_use_certificate(ctx, x);
    if (!ret) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "SSL_CTX_use_certificate() return %d", ret);
        goto failed2;
    }

    return 1;

failed2:
    X509_free(x);
failed1:
    return 0;
}
