#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
struct TYPE_3__ {int fd; } ;
typedef  TYPE_1__ mbedtls_net_context ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int MBEDTLS_ERR_NET_CONNECT_FAILED ; 
 int MBEDTLS_ERR_NET_SOCKET_FAILED ; 
 int MBEDTLS_ERR_NET_UNKNOWN_HOST ; 
 int MBEDTLS_NET_PROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 scalar_t__ FUNC3 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7( mbedtls_net_context *ctx, const char *host, const char *port, int proto )
{
    int ret;
    struct addrinfo hints, *addr_list, *cur;

    if ( ( ret = FUNC5() ) != 0 ) {
        return ( ret );
    }

    /* Do name resolution with both IPv6 and IPv4 */
    FUNC4( &hints, 0, sizeof( hints ) );
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = proto == MBEDTLS_NET_PROTO_UDP ? SOCK_DGRAM : SOCK_STREAM;
    hints.ai_protocol = proto == MBEDTLS_NET_PROTO_UDP ? IPPROTO_UDP : IPPROTO_TCP;

    if ( FUNC3( host, port, &hints, &addr_list ) != 0 ) {
        return ( MBEDTLS_ERR_NET_UNKNOWN_HOST );
    }

    /* Try the sockaddrs until a connection succeeds */
    ret = MBEDTLS_ERR_NET_UNKNOWN_HOST;
    for ( cur = addr_list; cur != NULL; cur = cur->ai_next ) {
        int fd = FUNC6( cur->ai_family, cur->ai_socktype, cur->ai_protocol );

        if ( fd < 0 ) {
            ret = MBEDTLS_ERR_NET_SOCKET_FAILED;
            continue;
        }

        if ( FUNC1( fd, cur->ai_addr, cur->ai_addrlen ) == 0 ) {
            ctx->fd = fd; // connected!
            ret = 0;
            break;
        }

        FUNC0( fd );
        ret = MBEDTLS_ERR_NET_CONNECT_FAILED;
    }

    FUNC2( addr_list );

    return ( ret );
}