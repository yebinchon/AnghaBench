#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* p; } ;
struct TYPE_6__ {TYPE_3__ N; TYPE_3__ E; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int MBEDTLS_ERR_RSA_KEY_CHECK_FAILED ; 
 int MBEDTLS_MPI_MAX_BITS ; 
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_3__*) ; 

int FUNC2( const mbedtls_rsa_context *ctx )
{
    if( !ctx->N.p || !ctx->E.p )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );

    if( ( ctx->N.p[0] & 1 ) == 0 ||
        ( ctx->E.p[0] & 1 ) == 0 )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );

    if( FUNC0( &ctx->N ) < 128 ||
        FUNC0( &ctx->N ) > MBEDTLS_MPI_MAX_BITS )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );

    if( FUNC0( &ctx->E ) < 2 ||
        FUNC1( &ctx->E, &ctx->N ) >= 0 )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );

    return( 0 );
}