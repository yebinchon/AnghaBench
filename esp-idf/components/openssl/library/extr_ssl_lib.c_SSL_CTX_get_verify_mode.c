
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int verify_mode; } ;
typedef TYPE_1__ SSL_CTX ;


 int SSL_ASSERT1 (TYPE_1__ const*) ;

int SSL_CTX_get_verify_mode(const SSL_CTX *ctx)
{
    SSL_ASSERT1(ctx);

    return ctx->verify_mode;
}
