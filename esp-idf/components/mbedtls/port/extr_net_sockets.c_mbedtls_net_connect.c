
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ mbedtls_net_context ;
typedef int hints ;


 int AF_UNSPEC ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int MBEDTLS_ERR_NET_CONNECT_FAILED ;
 int MBEDTLS_ERR_NET_SOCKET_FAILED ;
 int MBEDTLS_ERR_NET_UNKNOWN_HOST ;
 int MBEDTLS_NET_PROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int net_prepare () ;
 int socket (int ,int ,int ) ;

int mbedtls_net_connect( mbedtls_net_context *ctx, const char *host, const char *port, int proto )
{
    int ret;
    struct addrinfo hints, *addr_list, *cur;

    if ( ( ret = net_prepare() ) != 0 ) {
        return ( ret );
    }


    memset( &hints, 0, sizeof( hints ) );
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = proto == MBEDTLS_NET_PROTO_UDP ? SOCK_DGRAM : SOCK_STREAM;
    hints.ai_protocol = proto == MBEDTLS_NET_PROTO_UDP ? IPPROTO_UDP : IPPROTO_TCP;

    if ( getaddrinfo( host, port, &hints, &addr_list ) != 0 ) {
        return ( MBEDTLS_ERR_NET_UNKNOWN_HOST );
    }


    ret = MBEDTLS_ERR_NET_UNKNOWN_HOST;
    for ( cur = addr_list; cur != ((void*)0); cur = cur->ai_next ) {
        int fd = socket( cur->ai_family, cur->ai_socktype, cur->ai_protocol );

        if ( fd < 0 ) {
            ret = MBEDTLS_ERR_NET_SOCKET_FAILED;
            continue;
        }

        if ( connect( fd, cur->ai_addr, cur->ai_addrlen ) == 0 ) {
            ctx->fd = fd;
            ret = 0;
            break;
        }

        close( fd );
        ret = MBEDTLS_ERR_NET_CONNECT_FAILED;
    }

    freeaddrinfo( addr_list );

    return ( ret );
}
