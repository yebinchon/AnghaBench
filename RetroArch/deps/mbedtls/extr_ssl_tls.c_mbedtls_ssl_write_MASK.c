#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/ * conf; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,unsigned char const*,size_t) ; 
 int FUNC5 (TYPE_1__*,unsigned char const*,size_t) ; 

int FUNC6( mbedtls_ssl_context *ssl, const unsigned char *buf, size_t len )
{
    int ret;

    FUNC0( 2, ( "=> write" ) );

    if( ssl == NULL || ssl->conf == NULL )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

#if defined(MBEDTLS_SSL_RENEGOTIATION)
    if( ( ret = ssl_check_ctr_renegotiate( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "ssl_check_ctr_renegotiate", ret );
        return( ret );
    }
#endif

    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ( ret = FUNC2( ssl ) ) != 0 )
        {
            FUNC1( 1, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }

#if defined(MBEDTLS_SSL_CBC_RECORD_SPLITTING)
    ret = ssl_write_split( ssl, buf, len );
#else
    ret = FUNC4( ssl, buf, len );
#endif

    FUNC0( 2, ( "<= write" ) );

    return( ret );
}