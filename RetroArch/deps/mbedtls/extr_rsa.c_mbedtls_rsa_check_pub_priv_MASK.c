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
struct TYPE_6__ {int /*<<< orphan*/  E; int /*<<< orphan*/  N; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int MBEDTLS_ERR_RSA_KEY_CHECK_FAILED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 

int FUNC3( const mbedtls_rsa_context *pub, const mbedtls_rsa_context *prv )
{
    if( FUNC2( pub ) != 0 ||
        FUNC1( prv ) != 0 )
    {
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );
    }

    if( FUNC0( &pub->N, &prv->N ) != 0 ||
        FUNC0( &pub->E, &prv->E ) != 0 )
    {
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );
    }

    return( 0 );
}