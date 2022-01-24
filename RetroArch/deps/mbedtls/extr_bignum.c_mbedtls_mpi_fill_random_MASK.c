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
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MBEDTLS_MPI_MAX_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

int FUNC2( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret;
    unsigned char buf[MBEDTLS_MPI_MAX_SIZE];

    if( size > MBEDTLS_MPI_MAX_SIZE )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    FUNC0( f_rng( p_rng, buf, size ) );
    FUNC0( FUNC1( X, buf, size ) );

cleanup:
    return( ret );
}