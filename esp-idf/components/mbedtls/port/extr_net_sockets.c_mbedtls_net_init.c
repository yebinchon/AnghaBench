
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ mbedtls_net_context ;



void mbedtls_net_init( mbedtls_net_context *ctx )
{
    ctx->fd = -1;
}
