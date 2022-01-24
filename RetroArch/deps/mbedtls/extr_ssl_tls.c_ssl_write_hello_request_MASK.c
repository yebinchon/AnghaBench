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
struct TYPE_4__ {int out_msglen; int /*<<< orphan*/ * out_msg; int /*<<< orphan*/  out_msgtype; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  MBEDTLS_SSL_HS_HELLO_REQUEST ; 
 int /*<<< orphan*/  MBEDTLS_SSL_MSG_HANDSHAKE ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3( mbedtls_ssl_context *ssl )
{
    int ret;

    FUNC0( 2, ( "=> write hello request" ) );

    ssl->out_msglen  = 4;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0]  = MBEDTLS_SSL_HS_HELLO_REQUEST;

    if( ( ret = FUNC2( ssl ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    FUNC0( 2, ( "<= write hello request" ) );

    return( 0 );
}