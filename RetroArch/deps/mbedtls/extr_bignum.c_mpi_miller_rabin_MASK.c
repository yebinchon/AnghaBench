#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int n; int* p; } ;
typedef  TYPE_1__ const mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ciL ; 
 size_t FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,int,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 size_t FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*,TYPE_1__ const*,int) ; 

__attribute__((used)) static int FUNC14( const mbedtls_mpi *X,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng )
{
    int ret, count;
    size_t i, j, k, n, s;
    mbedtls_mpi W, R, T, A, RR;

    FUNC8( &W ); FUNC8( &R ); FUNC8( &T ); FUNC8( &A );
    FUNC8( &RR );

    /*
     * W = |X| - 1
     * R = W >> lsb( W )
     */
    FUNC0( FUNC13( &W, X, 1 ) );
    s = FUNC9( &W );
    FUNC0( FUNC4( &R, &W ) );
    FUNC0( FUNC12( &R, s ) );

    i = FUNC1( X );
    /*
     * HAC, table 4.4
     */
    n = ( ( i >= 1300 ) ?  2 : ( i >=  850 ) ?  3 :
          ( i >=  650 ) ?  4 : ( i >=  350 ) ?  8 :
          ( i >=  250 ) ? 12 : ( i >=  150 ) ? 18 : 27 );

    for( i = 0; i < n; i++ )
    {
        /*
         * pick a random A, 1 < A < |X| - 1
         */
        FUNC0( FUNC6( &A, X->n * ciL, f_rng, p_rng ) );

        if( FUNC3( &A, &W ) >= 0 )
        {
            j = FUNC1( &A ) - FUNC1( &W );
            FUNC0( FUNC12( &A, j + 1 ) );
        }
        A.p[0] |= 3;

        count = 0;
        do {
            FUNC0( FUNC6( &A, X->n * ciL, f_rng, p_rng ) );

            j = FUNC1( &A );
            k = FUNC1( &W );
            if (j > k) {
                FUNC0( FUNC12( &A, j - k ) );
            }

            if (count++ > 30) {
                return MBEDTLS_ERR_MPI_NOT_ACCEPTABLE;
            }

        } while ( FUNC3( &A, &W ) >= 0 ||
                  FUNC2( &A, 1 )  <= 0    );

        /*
         * A = A^R mod |X|
         */
        FUNC0( FUNC5( &A, &A, &R, X, &RR ) );

        if( FUNC3( &A, &W ) == 0 ||
            FUNC2( &A,  1 ) == 0 )
            continue;

        j = 1;
        while( j < s && FUNC3( &A, &W ) != 0 )
        {
            /*
             * A = A * A mod |X|
             */
            FUNC0( FUNC11( &T, &A, &A ) );
            FUNC0( FUNC10( &A, &T, X  ) );

            if( FUNC2( &A, 1 ) == 0 )
                break;

            j++;
        }

        /*
         * not prime if A != |X| - 1 or A == 1
         */
        if( FUNC3( &A, &W ) != 0 ||
            FUNC2( &A,  1 ) == 0 )
        {
            ret = MBEDTLS_ERR_MPI_NOT_ACCEPTABLE;
            break;
        }
    }

cleanup:
    FUNC7( &W ); FUNC7( &R ); FUNC7( &T ); FUNC7( &A );
    FUNC7( &RR );

    return( ret );
}