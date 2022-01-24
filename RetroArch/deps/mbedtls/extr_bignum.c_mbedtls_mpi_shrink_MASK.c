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
typedef  scalar_t__ mbedtls_mpi_uint ;
struct TYPE_4__ {size_t n; scalar_t__* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_ALLOC_FAILED ; 
 size_t ciL ; 
 scalar_t__ FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,size_t) ; 

int FUNC5( mbedtls_mpi *X, size_t nblimbs )
{
    mbedtls_mpi_uint *p;
    size_t i;

    /* Actually resize up in this case */
    if( X->n <= nblimbs )
        return( FUNC2( X, nblimbs ) );

    for( i = X->n - 1; i > 0; i-- )
        if( X->p[i] != 0 )
            break;
    i++;

    if( i < nblimbs )
        i = nblimbs;

    if( ( p = (mbedtls_mpi_uint*)FUNC0( i, ciL ) ) == NULL )
        return( MBEDTLS_ERR_MPI_ALLOC_FAILED );

    if( X->p != NULL )
    {
        FUNC4( p, X->p, i * ciL );
        FUNC3( X->p, X->n );
        FUNC1( X->p );
    }

    X->n = i;
    X->p = p;

    return( 0 );
}