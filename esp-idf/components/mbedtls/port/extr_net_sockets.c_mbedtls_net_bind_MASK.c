#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  n ;
struct TYPE_5__ {int fd; } ;
typedef  TYPE_2__ mbedtls_net_context ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int MBEDTLS_ERR_NET_BIND_FAILED ; 
 int MBEDTLS_ERR_NET_LISTEN_FAILED ; 
 int MBEDTLS_ERR_NET_SOCKET_FAILED ; 
 int MBEDTLS_ERR_NET_UNKNOWN_HOST ; 
 int /*<<< orphan*/  MBEDTLS_NET_LISTEN_BACKLOG ; 
 int MBEDTLS_NET_PROTO_TCP ; 
 int MBEDTLS_NET_PROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 scalar_t__ FUNC3 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10( mbedtls_net_context *ctx, const char *bind_ip, const char *port, int proto )
{
    int ret;
    struct addrinfo hints, *addr_list, *cur;
    struct sockaddr_in *serv_addr = NULL;
#if SO_REUSE
    int n = 1;
#endif

    if ( ( ret = FUNC7() ) != 0 ) {
        return ( ret );
    }

    /* Bind to IPv6 and/or IPv4, but only in the desired protocol */
    FUNC6( &hints, 0, sizeof( hints ) );
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = proto == MBEDTLS_NET_PROTO_UDP ? SOCK_DGRAM : SOCK_STREAM;
    hints.ai_protocol = proto == MBEDTLS_NET_PROTO_UDP ? IPPROTO_UDP : IPPROTO_TCP;

    if ( FUNC3( bind_ip, port, &hints, &addr_list ) != 0 ) {
        return ( MBEDTLS_ERR_NET_UNKNOWN_HOST );
    }

    /* Try the sockaddrs until a binding succeeds */
    ret = MBEDTLS_ERR_NET_UNKNOWN_HOST;
    for ( cur = addr_list; cur != NULL; cur = cur->ai_next ) {
        int fd = FUNC9( cur->ai_family, cur->ai_socktype, cur->ai_protocol );
        if ( fd < 0 ) {
            ret = MBEDTLS_ERR_NET_SOCKET_FAILED;
            continue;
        }

        /*SO_REUSEADDR option dafault is disable in source code(lwip)*/
#if SO_REUSE
        if ( setsockopt( fd, SOL_SOCKET, SO_REUSEADDR,
                         (const char *) &n, sizeof( n ) ) != 0 ) {
            close( fd );
            ret = MBEDTLS_ERR_NET_SOCKET_FAILED;
            continue;
        }
#endif
        /*bind interface dafault don't process the addr is 0xffffffff for TCP Protocol*/
        serv_addr = (struct sockaddr_in *)cur->ai_addr;
        serv_addr->sin_addr.s_addr = FUNC4(INADDR_ANY); /* Any incoming interface */
        if ( FUNC0( fd, (struct sockaddr *)serv_addr, cur->ai_addrlen ) != 0 ) {
            FUNC1( fd );
            ret = MBEDTLS_ERR_NET_BIND_FAILED;
            continue;
        }

        /* Listen only makes sense for TCP */
        if ( proto == MBEDTLS_NET_PROTO_TCP ) {
            if ( FUNC5( fd, MBEDTLS_NET_LISTEN_BACKLOG ) != 0 ) {
                FUNC1( fd );
                ret = MBEDTLS_ERR_NET_LISTEN_FAILED;
                continue;
            }
        }

        /* I we ever get there, it's a success */
        ctx->fd = fd;
        ret = 0;
        break;
    }

    FUNC2( addr_list );

    return ( ret );

}