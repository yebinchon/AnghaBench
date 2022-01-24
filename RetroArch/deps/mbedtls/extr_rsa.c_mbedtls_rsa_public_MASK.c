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
struct TYPE_3__ {size_t len; int /*<<< orphan*/  mutex; int /*<<< orphan*/  RN; int /*<<< orphan*/  N; int /*<<< orphan*/  E; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_RSA_PUBLIC_FAILED ; 
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9( mbedtls_rsa_context *ctx,
                const unsigned char *input,
                unsigned char *output )
{
    int ret;
    size_t olen;
    mbedtls_mpi T;

    FUNC4( &T );

#if defined(MBEDTLS_THREADING_C)
    if( ( ret = mbedtls_mutex_lock( &ctx->mutex ) ) != 0 )
        return( ret );
#endif

    FUNC0( FUNC5( &T, input, ctx->len ) );

    if( FUNC1( &T, &ctx->N ) >= 0 )
    {
        ret = MBEDTLS_ERR_MPI_BAD_INPUT_DATA;
        goto cleanup;
    }

    olen = ctx->len;
    FUNC0( FUNC2( &T, &T, &ctx->E, &ctx->N, &ctx->RN ) );
    FUNC0( FUNC6( &T, output, olen ) );

cleanup:
#if defined(MBEDTLS_THREADING_C)
    if( mbedtls_mutex_unlock( &ctx->mutex ) != 0 )
        return( MBEDTLS_ERR_THREADING_MUTEX_ERROR );
#endif

    FUNC3( &T );

    if( ret != 0 )
        return( MBEDTLS_ERR_RSA_PUBLIC_FAILED + ret );

    return( 0 );
}