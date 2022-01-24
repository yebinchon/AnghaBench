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
struct TYPE_6__ {int s; int /*<<< orphan*/  p; int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 

int FUNC3( const mbedtls_mpi *X,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng )
{
    int ret;
    mbedtls_mpi XX;

    XX.s = 1;
    XX.n = X->n;
    XX.p = X->p;

    if( FUNC0( &XX, 0 ) == 0 ||
        FUNC0( &XX, 1 ) == 0 )
        return( MBEDTLS_ERR_MPI_NOT_ACCEPTABLE );

    if( FUNC0( &XX, 2 ) == 0 )
        return( 0 );

    if( ( ret = FUNC1( &XX ) ) != 0 )
    {
        if( ret == 1 )
            return( 0 );

        return( ret );
    }

    return( FUNC2( &XX, f_rng, p_rng ) );
}