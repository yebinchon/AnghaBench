#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ out_left; size_t out_msglen; int /*<<< orphan*/  out_msg; int /*<<< orphan*/  out_msgtype; TYPE_1__* conf; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
struct TYPE_7__ {scalar_t__ transport; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  MBEDTLS_SSL_MSG_APPLICATION_DATA ; 
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ; 
 int FUNC2 (TYPE_2__*) ; 
 size_t FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC6( mbedtls_ssl_context *ssl,
                           const unsigned char *buf, size_t len )
{
    int ret;
#if defined(MBEDTLS_SSL_MAX_FRAGMENT_LENGTH)
    size_t max_len = mbedtls_ssl_get_max_frag_len( ssl );

    if( len > max_len )
    {
#if defined(MBEDTLS_SSL_PROTO_DTLS)
        if( ssl->conf->transport == MBEDTLS_SSL_TRANSPORT_DATAGRAM )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "fragment larger than the (negotiated) "
                                "maximum fragment length: %d > %d",
                                len, max_len ) );
            return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
        }
        else
#endif
            len = max_len;
    }
#endif /* MBEDTLS_SSL_MAX_FRAGMENT_LENGTH */

    if( ssl->out_left != 0 )
    {
        if( ( ret = FUNC2( ssl ) ) != 0 )
        {
            FUNC1( 1, "mbedtls_ssl_flush_output", ret );
            return( ret );
        }
    }
    else
    {
        ssl->out_msglen  = len;
        ssl->out_msgtype = MBEDTLS_SSL_MSG_APPLICATION_DATA;
        FUNC5( ssl->out_msg, buf, len );

        if( ( ret = FUNC4( ssl ) ) != 0 )
        {
            FUNC1( 1, "mbedtls_ssl_write_record", ret );
            return( ret );
        }
    }

    return( (int) len );
}