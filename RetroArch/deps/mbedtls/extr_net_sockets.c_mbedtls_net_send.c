
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ mbedtls_net_context ;


 scalar_t__ ECONNRESET ;
 scalar_t__ EINTR ;
 scalar_t__ EPIPE ;
 int MBEDTLS_ERR_NET_CONN_RESET ;
 int MBEDTLS_ERR_NET_INVALID_CONTEXT ;
 int MBEDTLS_ERR_NET_SEND_FAILED ;
 int MBEDTLS_ERR_SSL_WANT_WRITE ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 scalar_t__ net_would_block (TYPE_1__ const*) ;
 scalar_t__ write (int,unsigned char const*,size_t) ;

int mbedtls_net_send( void *ctx, const unsigned char *buf, size_t len )
{
    int ret;
    int fd = ((mbedtls_net_context *) ctx)->fd;

    if( fd < 0 )
        return( MBEDTLS_ERR_NET_INVALID_CONTEXT );

    ret = (int) write( fd, buf, len );

    if( ret < 0 )
    {
        if( net_would_block((const mbedtls_net_context*)ctx) != 0 )
            return( MBEDTLS_ERR_SSL_WANT_WRITE );






        if( errno == EPIPE || errno == ECONNRESET )
            return( MBEDTLS_ERR_NET_CONN_RESET );

        if( errno == EINTR )
            return( MBEDTLS_ERR_SSL_WANT_WRITE );


        return( MBEDTLS_ERR_NET_SEND_FAILED );
    }

    return( ret );
}
