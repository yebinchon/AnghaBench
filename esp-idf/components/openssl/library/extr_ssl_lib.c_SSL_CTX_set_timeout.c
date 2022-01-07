
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long session_timeout; } ;
typedef TYPE_1__ SSL_CTX ;


 int SSL_ASSERT1 (TYPE_1__*) ;

long SSL_CTX_set_timeout(SSL_CTX *ctx, long t)
{
    long l;

    SSL_ASSERT1(ctx);

    l = ctx->session_timeout;
    ctx->session_timeout = t;

    return l;
}
