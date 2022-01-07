
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long read_ahead; } ;
typedef TYPE_1__ SSL_CTX ;


 int SSL_ASSERT1 (TYPE_1__*) ;

long SSL_CTX_get_default_read_ahead(SSL_CTX *ctx)
{
    SSL_ASSERT1(ctx);

    return ctx->read_ahead;
}
