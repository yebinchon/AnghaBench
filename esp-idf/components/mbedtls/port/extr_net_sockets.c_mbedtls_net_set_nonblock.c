
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ mbedtls_net_context ;


 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int ,int ,int) ;

int mbedtls_net_set_nonblock( mbedtls_net_context *ctx )
{
    return ( fcntl( ctx->fd, F_SETFL, fcntl( ctx->fd, F_GETFL, 0 ) | O_NONBLOCK ) );
}
