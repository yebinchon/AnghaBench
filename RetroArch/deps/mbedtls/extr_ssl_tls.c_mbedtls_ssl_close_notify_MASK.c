#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ out_left; scalar_t__ state; int /*<<< orphan*/ * conf; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_WARNING ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4( mbedtls_ssl_context *ssl )
{
    int ret;

    if( ssl == NULL || ssl->conf == NULL )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    FUNC0( 2, ( "=> write close notify" ) );

    if( ssl->out_left != 0 )
        return( FUNC2( ssl ) );

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ( ret = FUNC3( ssl,
                        MBEDTLS_SSL_ALERT_LEVEL_WARNING,
                        MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY ) ) != 0 )
        {
            FUNC1( 1, "mbedtls_ssl_send_alert_message", ret );
            return( ret );
        }
    }

    FUNC0( 2, ( "<= write close notify" ) );

    return( 0 );
}