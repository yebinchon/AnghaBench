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
typedef  int /*<<< orphan*/  const mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  COMB_MAX_PRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5( const mbedtls_ecp_group *grp,
                                mbedtls_ecp_point T[], const mbedtls_ecp_point *P,
                                unsigned char w, size_t d )
{
    int ret;
    unsigned char i, k;
    size_t j;
    mbedtls_ecp_point *cur, *TT[COMB_MAX_PRE - 1];

    /*
     * Set T[0] = P and
     * T[2^{l-1}] = 2^{dl} P for l = 1 .. w-1 (this is not the final value)
     */
    FUNC0( FUNC4( &T[0], P ) );

    k = 0;
    for( i = 1; i < ( 1U << ( w - 1 ) ); i <<= 1 )
    {
        cur = T + i;
        FUNC0( FUNC4( cur, T + ( i >> 1 ) ) );
        for( j = 0; j < d; j++ )
            FUNC0( FUNC2( grp, cur, cur ) );

        TT[k++] = cur;
    }

    FUNC0( FUNC3( grp, TT, k ) );

    /*
     * Compute the remaining ones using the minimal number of additions
     * Be careful to update T[2^l] only after using it!
     */
    k = 0;
    for( i = 1; i < ( 1U << ( w - 1 ) ); i <<= 1 )
    {
        j = i;
        while( j-- )
        {
            FUNC0( FUNC1( grp, &T[i + j], &T[j], &T[i] ) );
            TT[k++] = &T[i + j];
        }
    }

    FUNC0( FUNC3( grp, TT, k ) );

cleanup:

    return( ret );
}