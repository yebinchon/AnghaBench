
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ mbedtls_net_context ;


 scalar_t__ ECONNRESET ;
 scalar_t__ EINTR ;
 scalar_t__ EPIPE ;
 int MBEDTLS_ERR_NET_CONN_RESET ;
 int MBEDTLS_ERR_NET_INVALID_CONTEXT ;
 int MBEDTLS_ERR_NET_RECV_FAILED ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 scalar_t__ errno ;
 scalar_t__ net_would_block (void*) ;
 scalar_t__ read (int,unsigned char*,size_t) ;

int mbedtls_net_recv( void *ctx, unsigned char *buf, size_t len )
{
    int ret;
    int fd = ((mbedtls_net_context *) ctx)->fd;

    if ( fd < 0 ) {
        return ( MBEDTLS_ERR_NET_INVALID_CONTEXT );
    }

    ret = (int) read( fd, buf, len );

    if ( ret < 0 ) {
        if ( net_would_block( ctx ) != 0 ) {
            return ( MBEDTLS_ERR_SSL_WANT_READ );
        }

        if ( errno == EPIPE || errno == ECONNRESET ) {
            return ( MBEDTLS_ERR_NET_CONN_RESET );
        }

        if ( errno == EINTR ) {
            return ( MBEDTLS_ERR_SSL_WANT_READ );
        }

        return ( MBEDTLS_ERR_NET_RECV_FAILED );
    }

    return ( ret );
}
