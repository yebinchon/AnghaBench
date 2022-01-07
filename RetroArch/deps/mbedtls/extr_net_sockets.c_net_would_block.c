
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ mbedtls_net_context ;




 int F_GETFL ;
 int O_NONBLOCK ;
 int errno ;
 int fcntl (int ,int ) ;

__attribute__((used)) static int net_would_block( const mbedtls_net_context *ctx )
{



    if( ( fcntl( ctx->fd, F_GETFL ) & O_NONBLOCK ) != O_NONBLOCK )
        return( 0 );

    switch( errno )
    {

        case 129:


        case 128:

            return( 1 );
    }
    return( 0 );
}
