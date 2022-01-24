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
struct TYPE_6__ {scalar_t__ (* f_psk ) (int /*<<< orphan*/ ,TYPE_2__*,unsigned char*,size_t) ;size_t psk_identity_len; scalar_t__ psk_len; int /*<<< orphan*/ * psk_identity; int /*<<< orphan*/  p_psk; int /*<<< orphan*/ * psk; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE ; 
 int MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED ; 
 int MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_UNKNOWN_PSK_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC5( mbedtls_ssl_context *ssl, unsigned char **p,
                                          const unsigned char *end )
{
    int ret = 0;
    size_t n;

    if( ssl->conf->f_psk == NULL &&
        ( ssl->conf->psk == NULL || ssl->conf->psk_identity == NULL ||
          ssl->conf->psk_identity_len == 0 || ssl->conf->psk_len == 0 ) )
    {
        FUNC1( 1, ( "got no pre-shared key" ) );
        return( MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED );
    }

    /*
     * Receive client pre-shared key identity name
     */
    if( *p + 2 > end )
    {
        FUNC1( 1, ( "bad client key exchange message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE );
    }

    n = ( (*p)[0] << 8 ) | (*p)[1];
    *p += 2;

    if( n < 1 || n > 65535 || *p + n > end )
    {
        FUNC1( 1, ( "bad client key exchange message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE );
    }

    if( ssl->conf->f_psk != NULL )
    {
        if( ssl->conf->f_psk( ssl->conf->p_psk, ssl, *p, n ) != 0 )
            ret = MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY;
    }
    else
    {
        /* Identity is not a big secret since clients send it in the clear,
         * but treat it carefully anyway, just in case */
        if( n != ssl->conf->psk_identity_len ||
            FUNC2( ssl->conf->psk_identity, *p, n ) != 0 )
        {
            ret = MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY;
        }
    }

    if( ret == MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY )
    {
        FUNC0( 3, "Unknown PSK identity", *p, n );
        FUNC3( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNKNOWN_PSK_IDENTITY );
        return( MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY );
    }

    *p += n;

    return( 0 );
}