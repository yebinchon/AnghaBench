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
struct TYPE_7__ {TYPE_1__* conf; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
struct TYPE_6__ {int (* f_sni ) (int /*<<< orphan*/ ,TYPE_2__*,unsigned char const*,size_t) ;int /*<<< orphan*/  p_sni; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_UNRECOGNIZED_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 unsigned char const MBEDTLS_TLS_EXT_SERVERNAME_HOSTNAME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC4( mbedtls_ssl_context *ssl,
                                     const unsigned char *buf,
                                     size_t len )
{
    int ret;
    size_t servername_list_size, hostname_len;
    const unsigned char *p;

    FUNC0( 3, ( "parse ServerName extension" ) );

    servername_list_size = ( ( buf[0] << 8 ) | ( buf[1] ) );
    if( servername_list_size + 2 != len )
    {
        FUNC0( 1, ( "bad client hello message" ) );
        FUNC2( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
    }

    p = buf + 2;
    while( servername_list_size > 0 )
    {
        hostname_len = ( ( p[1] << 8 ) | p[2] );
        if( hostname_len + 3 > servername_list_size )
        {
            FUNC0( 1, ( "bad client hello message" ) );
            FUNC2( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                            MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
            return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
        }

        if( p[0] == MBEDTLS_TLS_EXT_SERVERNAME_HOSTNAME )
        {
            ret = ssl->conf->f_sni( ssl->conf->p_sni,
                                    ssl, p + 3, hostname_len );
            if( ret != 0 )
            {
                FUNC1( 1, "ssl_sni_wrapper", ret );
                FUNC2( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                        MBEDTLS_SSL_ALERT_MSG_UNRECOGNIZED_NAME );
                return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
            }
            return( 0 );
        }

        servername_list_size -= hostname_len + 3;
        p += hostname_len + 3;
    }

    if( servername_list_size != 0 )
    {
        FUNC0( 1, ( "bad client hello message" ) );
        FUNC2( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
    }

    return( 0 );
}