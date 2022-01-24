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
typedef  int /*<<< orphan*/  mbedtls_mpi_uint ;
struct TYPE_3__ {size_t n; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_ALLOC_FAILED ; 
 size_t MBEDTLS_MPI_MAX_LIMBS ; 
 int ciL ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC4( mbedtls_mpi *X, size_t nblimbs )
{
    mbedtls_mpi_uint *p;

    if( nblimbs > MBEDTLS_MPI_MAX_LIMBS )
        return( MBEDTLS_ERR_MPI_ALLOC_FAILED );

    if( X->n < nblimbs )
    {
        if( ( p = (mbedtls_mpi_uint*)FUNC0( nblimbs, ciL ) ) == NULL )
            return( MBEDTLS_ERR_MPI_ALLOC_FAILED );

        if( X->p != NULL )
        {
            FUNC3( p, X->p, X->n * ciL );
            FUNC2( X->p, X->n );
            FUNC1( X->p );
        }

        X->n = nblimbs;
        X->p = p;
    }

    return( 0 );
}