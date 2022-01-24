#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int fd; } ;
typedef  TYPE_1__ mbedtls_net_context ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MBEDTLS_ERR_NET_INVALID_CONTEXT ; 
 int MBEDTLS_ERR_NET_RECV_FAILED ; 
 int MBEDTLS_ERR_SSL_TIMEOUT ; 
 int MBEDTLS_ERR_SSL_WANT_READ ; 
 scalar_t__ errno ; 
 int FUNC2 (void*,unsigned char*,size_t) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int FUNC4( void *ctx, unsigned char *buf, size_t len,
                              uint32_t timeout )
{
    int ret;
    struct timeval tv;
    fd_set read_fds;
    int fd = ((mbedtls_net_context *) ctx)->fd;

    if ( fd < 0 ) {
        return ( MBEDTLS_ERR_NET_INVALID_CONTEXT );
    }

    FUNC1( &read_fds );
    FUNC0( fd, &read_fds );

    tv.tv_sec  = timeout / 1000;
    tv.tv_usec = ( timeout % 1000 ) * 1000;

    ret = FUNC3( fd + 1, &read_fds, NULL, NULL, timeout == 0 ? NULL : &tv );

    /* Zero fds ready means we timed out */
    if ( ret == 0 ) {
        return ( MBEDTLS_ERR_SSL_TIMEOUT );
    }

    if ( ret < 0 ) {
        if ( errno == EINTR ) {
            return ( MBEDTLS_ERR_SSL_WANT_READ );
        }

        return ( MBEDTLS_ERR_NET_RECV_FAILED );
    }

    /* This call will not block */
    return ( FUNC2( ctx, buf, len ) );
}