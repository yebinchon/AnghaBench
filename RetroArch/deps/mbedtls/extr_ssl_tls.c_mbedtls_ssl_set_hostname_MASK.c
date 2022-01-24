#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* hostname; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_ALLOC_FAILED ; 
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 size_t MBEDTLS_SSL_MAX_HOST_NAME_LEN ; 
 scalar_t__ FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

int FUNC3( mbedtls_ssl_context *ssl, const char *hostname )
{
    size_t hostname_len;

    if( hostname == NULL )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    hostname_len = FUNC2( hostname );

    if( hostname_len + 1 == 0 )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    if( hostname_len > MBEDTLS_SSL_MAX_HOST_NAME_LEN )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    ssl->hostname = (char*)FUNC0( 1, hostname_len + 1 );

    if( ssl->hostname == NULL )
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );

    FUNC1( ssl->hostname, hostname, hostname_len );

    ssl->hostname[hostname_len] = '\0';

    return( 0 );
}