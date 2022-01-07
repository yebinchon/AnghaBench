
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* cert; } ;
struct TYPE_8__ {TYPE_2__* pkey; } ;
typedef TYPE_2__ SSL_CTX ;
typedef TYPE_2__ EVP_PKEY ;


 int EVP_PKEY_free (TYPE_2__*) ;
 int SSL_ASSERT1 (TYPE_2__*) ;

int SSL_CTX_use_PrivateKey(SSL_CTX *ctx, EVP_PKEY *pkey)
{
    SSL_ASSERT1(ctx);
    SSL_ASSERT1(pkey);

    if (ctx->cert->pkey == pkey)
        return 1;

    if (ctx->cert->pkey)
        EVP_PKEY_free(ctx->cert->pkey);

    ctx->cert->pkey = pkey;

    return 1;
}
