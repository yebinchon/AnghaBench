#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* handshake; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
typedef  int /*<<< orphan*/  mbedtls_ecp_curve_info ;
struct TYPE_5__ {int /*<<< orphan*/  const** curves; } ;

/* Variables and functions */
 size_t MBEDTLS_ECP_DP_MAX ; 
 int MBEDTLS_ERR_SSL_ALLOC_FAILED ; 
 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ ** FUNC1 (size_t,int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( mbedtls_ssl_context *ssl,
                                                const unsigned char *buf,
                                                size_t len )
{
    size_t list_size, our_size;
    const unsigned char *p;
    const mbedtls_ecp_curve_info *curve_info, **curves;

    list_size = ( ( buf[0] << 8 ) | ( buf[1] ) );
    if( list_size + 2 != len ||
        list_size % 2 != 0 )
    {
        FUNC0( 1, ( "bad client hello message" ) );
        FUNC3( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
    }

    /* Should never happen unless client duplicates the extension */
    if( ssl->handshake->curves != NULL )
    {
        FUNC0( 1, ( "bad client hello message" ) );
        FUNC3( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
    }

    /* Don't allow our peer to make us allocate too much memory,
     * and leave room for a final 0 */
    our_size = list_size / 2 + 1;
    if( our_size > MBEDTLS_ECP_DP_MAX )
        our_size = MBEDTLS_ECP_DP_MAX;

    if( ( curves = FUNC1( our_size, sizeof( *curves ) ) ) == NULL )
    {
        FUNC3( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR );
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }

    ssl->handshake->curves = curves;

    p = buf + 2;
    while( list_size > 0 && our_size > 1 )
    {
        curve_info = FUNC2( ( p[0] << 8 ) | p[1] );

        if( curve_info != NULL )
        {
            *curves++ = curve_info;
            our_size--;
        }

        list_size -= 2;
        p += 2;
    }

    return( 0 );
}