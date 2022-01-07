
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int read_ahead; } ;
typedef TYPE_1__ SSL_CTX ;


 int SSL_ASSERT3 (TYPE_1__*) ;

void SSL_CTX_set_read_ahead(SSL_CTX *ctx, int yes)
{
    SSL_ASSERT3(ctx);

    ctx->read_ahead = yes;
}
