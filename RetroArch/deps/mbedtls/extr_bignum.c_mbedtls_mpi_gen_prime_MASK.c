#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int mbedtls_mpi_uint ;
struct TYPE_17__ {int* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t MBEDTLS_MPI_MAX_BITS ; 
 size_t ciL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC9 (int*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 

int FUNC14( mbedtls_mpi *X, size_t nbits, int dh_flag,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng )
{
    int ret;
    size_t k, n;
    mbedtls_mpi_uint r;
    mbedtls_mpi Y;

    if( nbits < 3 || nbits > MBEDTLS_MPI_MAX_BITS )
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );

    FUNC7( &Y );

    n = FUNC0( nbits );

    FUNC1( FUNC5( X, n * ciL, f_rng, p_rng ) );

    k = FUNC3( X );
    if( k > nbits ) FUNC1( FUNC11( X, k - nbits + 1 ) );

    FUNC10( X, nbits-1, 1 );

    X->p[0] |= 1;

    if( dh_flag == 0 )
    {
        while( ( ret = FUNC8( X, f_rng, p_rng ) ) != 0 )
        {
            if( ret != MBEDTLS_ERR_MPI_NOT_ACCEPTABLE )
                goto cleanup;

            FUNC1( FUNC2( X, X, 2 ) );
        }
    }
    else
    {
        /*
         * An necessary condition for Y and X = 2Y + 1 to be prime
         * is X = 2 mod 3 (which is equivalent to Y = 2 mod 3).
         * Make sure it is satisfied, while keeping X = 3 mod 4
         */

        X->p[0] |= 2;

        FUNC1( FUNC9( &r, X, 3 ) );
        if( r == 0 )
            FUNC1( FUNC2( X, X, 8 ) );
        else if( r == 1 )
            FUNC1( FUNC2( X, X, 4 ) );

        /* Set Y = (X-1) / 2, which is X / 2 because X is odd */
        FUNC1( FUNC4( &Y, X ) );
        FUNC1( FUNC11( &Y, 1 ) );

        while( 1 )
        {
            /*
             * First, check small factors for X and Y
             * before doing Miller-Rabin on any of them
             */
            if( ( ret = FUNC12(  X         ) ) == 0 &&
                ( ret = FUNC12( &Y         ) ) == 0 &&
                ( ret = FUNC13(  X, f_rng, p_rng  ) ) == 0 &&
                ( ret = FUNC13( &Y, f_rng, p_rng  ) ) == 0 )
            {
                break;
            }

            if( ret != MBEDTLS_ERR_MPI_NOT_ACCEPTABLE )
                goto cleanup;

            /*
             * Next candidates. We want to preserve Y = (X-1) / 2 and
             * Y = 1 mod 2 and Y = 2 mod 3 (eq X = 3 mod 4 and X = 2 mod 3)
             * so up Y by 6 and X by 12.
             */
            FUNC1( FUNC2(  X,  X, 12 ) );
            FUNC1( FUNC2( &Y, &Y, 6  ) );
        }
    }

cleanup:

    FUNC6( &Y );

    return( ret );
}