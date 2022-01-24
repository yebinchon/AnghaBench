#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_3__ {int nbits; int /*<<< orphan*/  N; } ;
typedef  TYPE_1__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( const mbedtls_ecp_group *grp, mbedtls_mpi *x,
                       const unsigned char *buf, size_t blen )
{
    int ret;
    size_t n_size = ( grp->nbits + 7 ) / 8;
    size_t use_size = blen > n_size ? n_size : blen;

    FUNC0( FUNC2( x, buf, use_size ) );
    if( use_size * 8 > grp->nbits )
        FUNC0( FUNC3( x, use_size * 8 - grp->nbits ) );

    /* While at it, reduce modulo N */
    if( FUNC1( x, &grp->N ) >= 0 )
        FUNC0( FUNC4( x, x, &grp->N ) );

cleanup:
    return( ret );
}