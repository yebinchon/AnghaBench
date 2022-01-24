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
typedef  int mbedtls_mpi_uint ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4( mbedtls_mpi *X, int radix, char **p )
{
    int ret;
    mbedtls_mpi_uint r;

    if( radix < 2 || radix > 16 )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    FUNC0( FUNC3( &r, X, radix ) );
    FUNC0( FUNC2( X, NULL, X, radix ) );

    if( FUNC1( X, 0 ) != 0 )
        FUNC0( FUNC4( X, radix, p ) );

    if( r < 10 )
        *(*p)++ = (char)( r + 0x30 );
    else
        *(*p)++ = (char)( r + 0x37 );

cleanup:

    return( ret );
}