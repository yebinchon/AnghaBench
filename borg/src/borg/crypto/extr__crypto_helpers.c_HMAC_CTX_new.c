
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;


 int HMAC_CTX_cleanup (int *) ;
 int * OPENSSL_malloc (int) ;
 int memset (int *,int ,int) ;

HMAC_CTX *HMAC_CTX_new(void)
{
    HMAC_CTX *ctx = OPENSSL_malloc(sizeof(*ctx));
    if (ctx != ((void*)0)) {
        memset(ctx, 0, sizeof *ctx);
        HMAC_CTX_cleanup(ctx);
    }
    return ctx;
}
