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
typedef  int /*<<< orphan*/  const mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_NEGATIVE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int FUNC6( mbedtls_mpi *R, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret;

    if( FUNC2( B, 0 ) < 0 )
        return( MBEDTLS_ERR_MPI_NEGATIVE_VALUE );

    FUNC0( FUNC4( NULL, R, A, B ) );

    while( FUNC2( R, 0 ) < 0 )
      FUNC0( FUNC1( R, R, B ) );

    while( FUNC3( R, B ) >= 0 )
      FUNC0( FUNC5( R, R, B ) );

cleanup:

    return( ret );
}