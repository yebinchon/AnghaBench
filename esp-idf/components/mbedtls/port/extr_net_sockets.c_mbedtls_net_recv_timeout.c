
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ mbedtls_net_context ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int MBEDTLS_ERR_NET_INVALID_CONTEXT ;
 int MBEDTLS_ERR_NET_RECV_FAILED ;
 int MBEDTLS_ERR_SSL_TIMEOUT ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 scalar_t__ errno ;
 int mbedtls_net_recv (void*,unsigned char*,size_t) ;
 int select (int,int *,int *,int *,struct timeval*) ;

int mbedtls_net_recv_timeout( void *ctx, unsigned char *buf, size_t len,
                              uint32_t timeout )
{
    int ret;
    struct timeval tv;
    fd_set read_fds;
    int fd = ((mbedtls_net_context *) ctx)->fd;

    if ( fd < 0 ) {
        return ( MBEDTLS_ERR_NET_INVALID_CONTEXT );
    }

    FD_ZERO( &read_fds );
    FD_SET( fd, &read_fds );

    tv.tv_sec = timeout / 1000;
    tv.tv_usec = ( timeout % 1000 ) * 1000;

    ret = select( fd + 1, &read_fds, ((void*)0), ((void*)0), timeout == 0 ? ((void*)0) : &tv );


    if ( ret == 0 ) {
        return ( MBEDTLS_ERR_SSL_TIMEOUT );
    }

    if ( ret < 0 ) {
        if ( errno == EINTR ) {
            return ( MBEDTLS_ERR_SSL_WANT_READ );
        }

        return ( MBEDTLS_ERR_NET_RECV_FAILED );
    }


    return ( mbedtls_net_recv( ctx, buf, len ) );
}
