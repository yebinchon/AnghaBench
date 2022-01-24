#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mbedtls_mpi_uint ;
struct TYPE_5__ {int* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,TYPE_1__ const*,scalar_t__) ; 
 scalar_t__* small_prime ; 

__attribute__((used)) static int FUNC3( const mbedtls_mpi *X )
{
    int ret = 0;
    size_t i;
    mbedtls_mpi_uint r;

    if( ( X->p[0] & 1 ) == 0 )
        return( MBEDTLS_ERR_MPI_NOT_ACCEPTABLE );

    for( i = 0; small_prime[i] > 0; i++ )
    {
        if( FUNC1( X, small_prime[i] ) <= 0 )
            return( 1 );

        FUNC0( FUNC2( &r, X, small_prime[i] ) );

        if( r == 0 )
            return( MBEDTLS_ERR_MPI_NOT_ACCEPTABLE );
    }

cleanup:
    return( ret );
}