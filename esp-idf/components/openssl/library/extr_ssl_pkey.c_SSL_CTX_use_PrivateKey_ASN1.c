
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int SSL_CTX_use_PrivateKey (int *,int *) ;
 int SSL_DEBUG (int ,char*,...) ;
 int SSL_PKEY_ERROR_LEVEL ;
 int * d2i_PrivateKey (int ,int *,unsigned char const**,long) ;

int SSL_CTX_use_PrivateKey_ASN1(int type, SSL_CTX *ctx,
                                const unsigned char *d, long len)
{
    int ret;
    EVP_PKEY *pk;

    pk = d2i_PrivateKey(0, ((void*)0), &d, len);
    if (!pk) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "d2i_PrivateKey() return NULL");
        goto failed1;
    }

    ret = SSL_CTX_use_PrivateKey(ctx, pk);
    if (!ret) {
        SSL_DEBUG(SSL_PKEY_ERROR_LEVEL, "SSL_CTX_use_PrivateKey() return %d", ret);
        goto failed2;
    }

    return 1;

failed2:
    EVP_PKEY_free(pk);
failed1:
    return 0;
}
