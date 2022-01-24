#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,TYPE_1__*,TYPE_1__ const*,unsigned char,unsigned char const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                              const mbedtls_ecp_point T[], unsigned char t_len,
                              const unsigned char x[], size_t d,
                              int (*f_rng)(void *, unsigned char *, size_t),
                              void *p_rng )
{
    int ret;
    mbedtls_ecp_point Txi;
    size_t i;

    FUNC6( &Txi );

    /* Start with a non-zero point and randomize its coordinates */
    i = d;
    FUNC0( FUNC4( grp, R, T, t_len, x[i] ) );
    FUNC0( FUNC7( &R->Z, 1 ) );
    if( f_rng != 0 )
        FUNC0( FUNC3( grp, R, f_rng, p_rng ) );

    while( i-- != 0 )
    {
        FUNC0( FUNC2( grp, R, R ) );
        FUNC0( FUNC4( grp, &Txi, T, t_len, x[i] ) );
        FUNC0( FUNC1( grp, R, R, &Txi ) );
    }

cleanup:

    FUNC5( &Txi );

    return( ret );
}