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
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/ * conf; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2( mbedtls_ssl_context *ssl )
{
    int ret = 0;

    if( ssl == NULL || ssl->conf == NULL )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    FUNC0( 2, ( "=> handshake" ) );

    while( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        ret = FUNC1( ssl );

        if( ret != 0 )
            break;
    }

    FUNC0( 2, ( "<= handshake" ) );

    return( ret );
}