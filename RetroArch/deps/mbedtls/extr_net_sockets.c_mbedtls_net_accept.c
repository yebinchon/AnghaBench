
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int type ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct TYPE_8__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int one ;
struct TYPE_9__ {int fd; } ;
typedef TYPE_3__ mbedtls_net_context ;
typedef int client_addr ;
typedef int buf ;


 scalar_t__ AF_INET ;
 int IPPROTO_UDP ;
 int MBEDTLS_ERR_NET_ACCEPT_FAILED ;
 int MBEDTLS_ERR_NET_BIND_FAILED ;
 int MBEDTLS_ERR_NET_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_NET_SOCKET_FAILED ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MSG_PEEK ;
 int SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int SO_TYPE ;
 scalar_t__ WSAEMSGSIZE ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ accept (int,struct sockaddr*,int*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 scalar_t__ getsockopt (int,int ,int ,void*,int*) ;
 int memcpy (void*,int *,size_t) ;
 scalar_t__ net_would_block (TYPE_3__*) ;
 scalar_t__ recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 scalar_t__ setsockopt (int,int ,int ,char const*,int) ;
 scalar_t__ socket (scalar_t__,int,int ) ;

int mbedtls_net_accept( mbedtls_net_context *bind_ctx,
                        mbedtls_net_context *client_ctx,
                        void *client_ip, size_t buf_size, size_t *ip_len )
{
    int ret;
    int type;

    struct sockaddr_storage client_addr;






    int n = (int) sizeof( client_addr );
    int type_len = (int) sizeof( type );



    if( getsockopt( bind_ctx->fd, SOL_SOCKET, SO_TYPE,
                    (void *) &type, &type_len ) != 0 ||
        ( type != SOCK_STREAM && type != SOCK_DGRAM ) )
    {
        return( MBEDTLS_ERR_NET_ACCEPT_FAILED );
    }

    if( type == SOCK_STREAM )
    {

        ret = client_ctx->fd = (int) accept( bind_ctx->fd,
                                             (struct sockaddr *) &client_addr, &n );
    }
    else
    {

        char buf[1] = { 0 };

        ret = (int) recvfrom( bind_ctx->fd, buf, sizeof( buf ), MSG_PEEK,
                        (struct sockaddr *) &client_addr, &n );
    }

    if( ret < 0 )
    {
        if( net_would_block( bind_ctx ) != 0 )
            return( MBEDTLS_ERR_SSL_WANT_READ );

        return( MBEDTLS_ERR_NET_ACCEPT_FAILED );
    }



    if( type != SOCK_STREAM )
    {
        struct sockaddr_storage local_addr;
        int one = 1;

        if( connect( bind_ctx->fd, (struct sockaddr *) &client_addr, n ) != 0 )
            return( MBEDTLS_ERR_NET_ACCEPT_FAILED );

        client_ctx->fd = bind_ctx->fd;
        bind_ctx->fd = -1;

        n = sizeof( struct sockaddr_storage );
        if( getsockname( client_ctx->fd,
                         (struct sockaddr *) &local_addr, &n ) != 0 ||
            ( bind_ctx->fd = (int) socket( local_addr.ss_family,
                                           SOCK_DGRAM, IPPROTO_UDP ) ) < 0 ||
            setsockopt( bind_ctx->fd, SOL_SOCKET, SO_REUSEADDR,
                        (const char *) &one, sizeof( one ) ) != 0 )
        {
            return( MBEDTLS_ERR_NET_SOCKET_FAILED );
        }

        if( bind( bind_ctx->fd, (struct sockaddr *) &local_addr, n ) != 0 )
        {
            return( MBEDTLS_ERR_NET_BIND_FAILED );
        }
    }

    if( client_ip != ((void*)0) )
    {
        if( client_addr.ss_family == AF_INET )
        {
            struct sockaddr_in *addr4 = (struct sockaddr_in *) &client_addr;
            *ip_len = sizeof( addr4->sin_addr.s_addr );

            if( buf_size < *ip_len )
                return( MBEDTLS_ERR_NET_BUFFER_TOO_SMALL );

            memcpy( client_ip, &addr4->sin_addr.s_addr, *ip_len );
        }
        else
        {
            struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *) &client_addr;
            *ip_len = sizeof( addr6->sin6_addr.s6_addr );

            if( buf_size < *ip_len )
                return( MBEDTLS_ERR_NET_BUFFER_TOO_SMALL );

            memcpy( client_ip, &addr6->sin6_addr.s6_addr, *ip_len);
        }
    }

    return( 0 );
}
