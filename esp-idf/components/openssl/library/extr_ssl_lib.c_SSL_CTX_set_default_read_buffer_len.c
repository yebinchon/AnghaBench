
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t read_buffer_len; } ;
typedef TYPE_1__ SSL_CTX ;


 int SSL_ASSERT3 (TYPE_1__*) ;

void SSL_CTX_set_default_read_buffer_len(SSL_CTX *ctx, size_t len)
{
    SSL_ASSERT3(ctx);

    ctx->read_buffer_len = len;
}
