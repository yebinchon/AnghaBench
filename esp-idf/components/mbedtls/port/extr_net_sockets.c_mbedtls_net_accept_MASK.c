#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  one ;
struct TYPE_7__ {int fd; } ;
typedef  TYPE_2__ mbedtls_net_context ;
typedef  int /*<<< orphan*/  client_addr ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int MBEDTLS_ERR_NET_ACCEPT_FAILED ; 
 int MBEDTLS_ERR_NET_BIND_FAILED ; 
 int MBEDTLS_ERR_NET_BUFFER_TOO_SMALL ; 
 int MBEDTLS_ERR_NET_SOCKET_FAILED ; 
 int MBEDTLS_ERR_SSL_WANT_READ ; 
 int /*<<< orphan*/  MSG_PEEK ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  SO_TYPE ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC10( mbedtls_net_context *bind_ctx,
                        mbedtls_net_context *client_ctx,
                        void *client_ip, size_t buf_size, size_t *ip_len )
{
    int ret;
    int type;

    struct sockaddr_in client_addr;

    socklen_t n = (socklen_t) sizeof( client_addr );
    socklen_t type_len = (socklen_t) sizeof( type );

    /* Is this a TCP or UDP socket? */
    if ( FUNC4( bind_ctx->fd, SOL_SOCKET, SO_TYPE,
                     (void *) &type, (socklen_t *) &type_len ) != 0 ||
            ( type != SOCK_STREAM && type != SOCK_DGRAM ) ) {
        return ( MBEDTLS_ERR_NET_ACCEPT_FAILED );
    }

    if ( type == SOCK_STREAM ) {
        /* TCP: actual accept() */
        ret = client_ctx->fd = (int) FUNC0( bind_ctx->fd,
                                             (struct sockaddr *) &client_addr, &n );
    } else {
        /* UDP: wait for a message, but keep it in the queue */
        char buf[1] = { 0 };

        ret = FUNC7( bind_ctx->fd, buf, sizeof( buf ), MSG_PEEK,
                        (struct sockaddr *) &client_addr, &n );

    }

    if ( ret < 0 ) {
        if ( FUNC6( bind_ctx ) != 0 ) {
            return ( MBEDTLS_ERR_SSL_WANT_READ );
        }

        return ( MBEDTLS_ERR_NET_ACCEPT_FAILED );
    }

    /* UDP: hijack the listening socket to communicate with the client,
     * then bind a new socket to accept new connections */
    if ( type != SOCK_STREAM ) {
        struct sockaddr_in local_addr;
        int one = 1;

        if ( FUNC2( bind_ctx->fd, (struct sockaddr *) &client_addr, n ) != 0 ) {
            return ( MBEDTLS_ERR_NET_ACCEPT_FAILED );
        }

        client_ctx->fd = bind_ctx->fd;
        bind_ctx->fd   = -1; /* In case we exit early */

        n = sizeof( struct sockaddr_in );
        if ( FUNC3( client_ctx->fd,
                          (struct sockaddr *) &local_addr, &n ) != 0 ||
                ( bind_ctx->fd = (int) FUNC9( AF_INET,
                                               SOCK_DGRAM, IPPROTO_UDP ) ) < 0 ||
                FUNC8( bind_ctx->fd, SOL_SOCKET, SO_REUSEADDR,
                            (const char *) &one, sizeof( one ) ) != 0 ) {
            return ( MBEDTLS_ERR_NET_SOCKET_FAILED );
        }

        if ( FUNC1( bind_ctx->fd, (struct sockaddr *) &local_addr, n ) != 0 ) {
            return ( MBEDTLS_ERR_NET_BIND_FAILED );
        }
    }

    if ( client_ip != NULL ) {
        struct sockaddr_in *addr4 = (struct sockaddr_in *) &client_addr;
        *ip_len = sizeof( addr4->sin_addr.s_addr );

        if ( buf_size < *ip_len ) {
            return ( MBEDTLS_ERR_NET_BUFFER_TOO_SMALL );
        }

        FUNC5( client_ip, &addr4->sin_addr.s_addr, *ip_len );
    }

    return ( 0 );
}