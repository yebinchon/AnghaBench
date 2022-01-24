#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int out_msglen; unsigned char* out_msg; int /*<<< orphan*/  out_msgtype; int /*<<< orphan*/ * conf; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  MBEDTLS_SSL_MSG_ALERT ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3( mbedtls_ssl_context *ssl,
                            unsigned char level,
                            unsigned char message )
{
    int ret;

    if( ssl == NULL || ssl->conf == NULL )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    FUNC0( 2, ( "=> send alert message" ) );
    FUNC0( 3, ( "send alert level=%u message=%u", level, message ));

    ssl->out_msgtype = MBEDTLS_SSL_MSG_ALERT;
    ssl->out_msglen = 2;
    ssl->out_msg[0] = level;
    ssl->out_msg[1] = message;

    if( ( ret = FUNC2( ssl ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }
    FUNC0( 2, ( "<= send alert message" ) );

    return( 0 );
}