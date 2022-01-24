#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ keep_current_message; scalar_t__ in_msgtype; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_NON_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5( mbedtls_ssl_context *ssl )
{
    int ret;

    FUNC0( 2, ( "=> read record" ) );

    if( ssl->keep_current_message == 0 )
    {
        do {

            if( ( ret = FUNC3( ssl ) ) != 0 )
            {
                FUNC1( 1, ( "mbedtls_ssl_read_record_layer" ), ret );
                return( ret );
            }

            ret = FUNC2( ssl );

        } while( MBEDTLS_ERR_SSL_NON_FATAL == ret );

        if( 0 != ret )
        {
            FUNC1( 1, ( "mbedtls_ssl_read_record_layer" ), ret );
            return( ret );
        }

        if( ssl->in_msgtype == MBEDTLS_SSL_MSG_HANDSHAKE )
        {
            FUNC4( ssl );
        }
    }
    else
    {
        FUNC0( 2, ( "<= reuse previously read message" ) );
        ssl->keep_current_message = 0;
    }

    FUNC0( 2, ( "<= read record" ) );

    return( 0 );
}