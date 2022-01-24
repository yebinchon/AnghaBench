#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int* p; } ;
typedef  TYPE_1__ const mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 

int FUNC12( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *N )
{
    int ret;
    mbedtls_mpi G, TA, TU, U1, U2, TB, TV, V1, V2;

    if( FUNC2( N, 1 ) <= 0 )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    FUNC7( &TA ); FUNC7( &TU ); FUNC7( &U1 ); FUNC7( &U2 );
    FUNC7( &G ); FUNC7( &TB ); FUNC7( &TV );
    FUNC7( &V1 ); FUNC7( &V2 );

    FUNC0( FUNC6( &G, A, N ) );

    if( FUNC2( &G, 1 ) != 0 )
    {
        ret = MBEDTLS_ERR_MPI_NOT_ACCEPTABLE;
        goto cleanup;
    }

    FUNC0( FUNC9( &TA, A, N ) );
    FUNC0( FUNC4( &TU, &TA ) );
    FUNC0( FUNC4( &TB, N ) );
    FUNC0( FUNC4( &TV, N ) );

    FUNC0( FUNC8( &U1, 1 ) );
    FUNC0( FUNC8( &U2, 0 ) );
    FUNC0( FUNC8( &V1, 0 ) );
    FUNC0( FUNC8( &V2, 1 ) );

    do
    {
        while( ( TU.p[0] & 1 ) == 0 )
        {
            FUNC0( FUNC10( &TU, 1 ) );

            if( ( U1.p[0] & 1 ) != 0 || ( U2.p[0] & 1 ) != 0 )
            {
                FUNC0( FUNC1( &U1, &U1, &TB ) );
                FUNC0( FUNC11( &U2, &U2, &TA ) );
            }

            FUNC0( FUNC10( &U1, 1 ) );
            FUNC0( FUNC10( &U2, 1 ) );
        }

        while( ( TV.p[0] & 1 ) == 0 )
        {
            FUNC0( FUNC10( &TV, 1 ) );

            if( ( V1.p[0] & 1 ) != 0 || ( V2.p[0] & 1 ) != 0 )
            {
                FUNC0( FUNC1( &V1, &V1, &TB ) );
                FUNC0( FUNC11( &V2, &V2, &TA ) );
            }

            FUNC0( FUNC10( &V1, 1 ) );
            FUNC0( FUNC10( &V2, 1 ) );
        }

        if( FUNC3( &TU, &TV ) >= 0 )
        {
            FUNC0( FUNC11( &TU, &TU, &TV ) );
            FUNC0( FUNC11( &U1, &U1, &V1 ) );
            FUNC0( FUNC11( &U2, &U2, &V2 ) );
        }
        else
        {
            FUNC0( FUNC11( &TV, &TV, &TU ) );
            FUNC0( FUNC11( &V1, &V1, &U1 ) );
            FUNC0( FUNC11( &V2, &V2, &U2 ) );
        }
    }
    while( FUNC2( &TU, 0 ) != 0 );

    while( FUNC2( &V1, 0 ) < 0 )
        FUNC0( FUNC1( &V1, &V1, N ) );

    while( FUNC3( &V1, N ) >= 0 )
        FUNC0( FUNC11( &V1, &V1, N ) );

    FUNC0( FUNC4( X, &V1 ) );

cleanup:

    FUNC5( &TA ); FUNC5( &TU ); FUNC5( &U1 ); FUNC5( &U2 );
    FUNC5( &G ); FUNC5( &TB ); FUNC5( &TV );
    FUNC5( &V1 ); FUNC5( &V2 );

    return( ret );
}