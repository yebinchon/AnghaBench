
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; scalar_t__ ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int n ;
struct TYPE_5__ {int fd; } ;
typedef TYPE_2__ mbedtls_net_context ;
typedef int hints ;


 int AF_UNSPEC ;
 int INADDR_ANY ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int MBEDTLS_ERR_NET_BIND_FAILED ;
 int MBEDTLS_ERR_NET_LISTEN_FAILED ;
 int MBEDTLS_ERR_NET_SOCKET_FAILED ;
 int MBEDTLS_ERR_NET_UNKNOWN_HOST ;
 int MBEDTLS_NET_LISTEN_BACKLOG ;
 int MBEDTLS_NET_PROTO_TCP ;
 int MBEDTLS_NET_PROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int htonl (int ) ;
 scalar_t__ listen (int,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int net_prepare () ;
 scalar_t__ setsockopt (int,int ,int ,char const*,int) ;
 int socket (int ,int ,int ) ;

int mbedtls_net_bind( mbedtls_net_context *ctx, const char *bind_ip, const char *port, int proto )
{
    int ret;
    struct addrinfo hints, *addr_list, *cur;
    struct sockaddr_in *serv_addr = ((void*)0);




    if ( ( ret = net_prepare() ) != 0 ) {
        return ( ret );
    }


    memset( &hints, 0, sizeof( hints ) );
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = proto == MBEDTLS_NET_PROTO_UDP ? SOCK_DGRAM : SOCK_STREAM;
    hints.ai_protocol = proto == MBEDTLS_NET_PROTO_UDP ? IPPROTO_UDP : IPPROTO_TCP;

    if ( getaddrinfo( bind_ip, port, &hints, &addr_list ) != 0 ) {
        return ( MBEDTLS_ERR_NET_UNKNOWN_HOST );
    }


    ret = MBEDTLS_ERR_NET_UNKNOWN_HOST;
    for ( cur = addr_list; cur != ((void*)0); cur = cur->ai_next ) {
        int fd = socket( cur->ai_family, cur->ai_socktype, cur->ai_protocol );
        if ( fd < 0 ) {
            ret = MBEDTLS_ERR_NET_SOCKET_FAILED;
            continue;
        }
        serv_addr = (struct sockaddr_in *)cur->ai_addr;
        serv_addr->sin_addr.s_addr = htonl(INADDR_ANY);
        if ( bind( fd, (struct sockaddr *)serv_addr, cur->ai_addrlen ) != 0 ) {
            close( fd );
            ret = MBEDTLS_ERR_NET_BIND_FAILED;
            continue;
        }


        if ( proto == MBEDTLS_NET_PROTO_TCP ) {
            if ( listen( fd, MBEDTLS_NET_LISTEN_BACKLOG ) != 0 ) {
                close( fd );
                ret = MBEDTLS_ERR_NET_LISTEN_FAILED;
                continue;
            }
        }


        ctx->fd = fd;
        ret = 0;
        break;
    }

    freeaddrinfo( addr_list );

    return ( ret );

}
