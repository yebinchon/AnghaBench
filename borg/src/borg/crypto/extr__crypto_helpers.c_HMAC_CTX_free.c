
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;


 int HMAC_CTX_cleanup (int *) ;
 int OPENSSL_free (int *) ;

void HMAC_CTX_free(HMAC_CTX *ctx)
{
    if (ctx != ((void*)0)) {
        HMAC_CTX_cleanup(ctx);
        OPENSSL_free(ctx);
    }
}
