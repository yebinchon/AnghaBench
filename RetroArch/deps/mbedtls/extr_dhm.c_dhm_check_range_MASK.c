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
 int MBEDTLS_ERR_DHM_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6( const mbedtls_mpi *param, const mbedtls_mpi *P )
{
    mbedtls_mpi L, U;
    int ret = MBEDTLS_ERR_DHM_BAD_INPUT_DATA;

    FUNC3( &L ); FUNC3( &U );

    FUNC0( FUNC4( &L, 2 ) );
    FUNC0( FUNC5( &U, P, 2 ) );

    if( FUNC1( param, &L ) >= 0 &&
        FUNC1( param, &U ) <= 0 )
    {
        ret = 0;
    }

cleanup:
    FUNC2( &L ); FUNC2( &U );
    return( ret );
}