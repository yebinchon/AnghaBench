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
typedef  void mbedtls_des_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void * FUNC2( void )
{
    mbedtls_des_context *des = (mbedtls_des_context*)
       FUNC0( 1, sizeof( mbedtls_des_context ) );

    if( des == NULL )
        return( NULL );

    FUNC1( des );

    return( des );
}