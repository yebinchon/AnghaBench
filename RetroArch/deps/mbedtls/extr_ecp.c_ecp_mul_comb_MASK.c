#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_20__ {int /*<<< orphan*/  X; int /*<<< orphan*/  Y; } ;
typedef  TYPE_2__ mbedtls_ecp_point ;
struct TYPE_19__ {int /*<<< orphan*/  X; int /*<<< orphan*/  Y; } ;
struct TYPE_21__ {int nbits; unsigned char T_size; int /*<<< orphan*/  const N; TYPE_2__* T; TYPE_1__ G; } ;
typedef  TYPE_3__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  COMB_MAX_D ; 
 unsigned char MBEDTLS_ECP_WINDOW_SIZE ; 
 int MBEDTLS_ERR_ECP_ALLOC_FAILED ; 
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t,unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_2__*,unsigned char,unsigned char*,size_t,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_2__ const*,unsigned char,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC16( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                         const mbedtls_mpi *m, const mbedtls_ecp_point *P,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng )
{
    int ret;
    unsigned char w, m_is_odd, p_eq_g, pre_len, i;
    size_t d;
    unsigned char k[COMB_MAX_D + 1];
    mbedtls_ecp_point *T;
    mbedtls_mpi M, mm;

    FUNC13( &M );
    FUNC13( &mm );

    /* we need N to be odd to trnaform m in an odd number, check now */
    if( FUNC12( &grp->N, 0 ) != 1 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    /*
     * Minimize the number of multiplications, that is minimize
     * 10 * d * w + 18 * 2^(w-1) + 11 * d + 7 * w, with d = ceil( nbits / w )
     * (see costs of the various parts, with 1S = 1M)
     */
    w = grp->nbits >= 384 ? 5 : 4;

    /*
     * If P == G, pre-compute a bit more, since this may be re-used later.
     * Just adding one avoids upping the cost of the first mul too much,
     * and the memory cost too.
     */
#if MBEDTLS_ECP_FIXED_POINT_OPTIM == 1
    p_eq_g = ( mbedtls_mpi_cmp_mpi( &P->Y, &grp->G.Y ) == 0 &&
               mbedtls_mpi_cmp_mpi( &P->X, &grp->G.X ) == 0 );
    if( p_eq_g )
        w++;
#else
    p_eq_g = 0;
#endif

    /*
     * Make sure w is within bounds.
     * (The last test is useful only for very small curves in the test suite.)
     */
    if( w > MBEDTLS_ECP_WINDOW_SIZE )
        w = MBEDTLS_ECP_WINDOW_SIZE;
    if( w >= grp->nbits )
        w = 2;

    /* Other sizes that depend on w */
    pre_len = 1U << ( w - 1 );
    d = ( grp->nbits + w - 1 ) / w;

    /*
     * Prepare precomputed points: if P == G we want to
     * use grp->T if already initialized, or initialize it.
     */
    T = p_eq_g ? grp->T : NULL;

    if( T == NULL )
    {
        T = (mbedtls_ecp_point*)FUNC6( pre_len, sizeof( mbedtls_ecp_point ) );
        if( T == NULL )
        {
            ret = MBEDTLS_ERR_ECP_ALLOC_FAILED;
            goto cleanup;
        }

        FUNC0( FUNC4( grp, T, P, w, d ) );

        if( p_eq_g )
        {
            grp->T = T;
            grp->T_size = pre_len;
        }
    }

    /*
     * Make sure M is odd (M = m or M = N - m, since N is odd)
     * using the fact that m * P = - (N - m) * P
     */
    m_is_odd = ( FUNC12( m, 0 ) == 1 );
    FUNC0( FUNC10( &M, m ) );
    FUNC0( FUNC15( &mm, &grp->N, m ) );
    FUNC0( FUNC14( &M, &mm, ! m_is_odd ) );

    /*
     * Go for comb multiplication, R = M * P
     */
    FUNC1( k, d, w, &M );
    FUNC0( FUNC2( grp, R, T, pre_len, k, d, f_rng, p_rng ) );

    /*
     * Now get m * P from M * P and normalize it
     */
    FUNC0( FUNC5( grp, R, ! m_is_odd ) );
    FUNC0( FUNC3( grp, R ) );

cleanup:

    if( T != NULL && ! p_eq_g )
    {
        for( i = 0; i < pre_len; i++ )
            FUNC7( &T[i] );
        FUNC8( T );
    }

    FUNC11( &M );
    FUNC11( &mm );

    if( ret != 0 )
        FUNC7( R );

    return( ret );
}