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
typedef  void mbedtls_camellia_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void * FUNC2( void )
{
    mbedtls_camellia_context *ctx = (mbedtls_camellia_context*)
       FUNC0( 1, sizeof( mbedtls_camellia_context ) );

    if( ctx == NULL )
        return( NULL );

    FUNC1( ctx );

    return( ctx );
}