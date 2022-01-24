#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_ssl_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1( mbedtls_ssl_context *ssl )
{
    int ret;

    if( ( ret = FUNC0( ssl,
                    MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                    MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE ) ) != 0 )
    {
        return( ret );
    }

    return( 0 );
}