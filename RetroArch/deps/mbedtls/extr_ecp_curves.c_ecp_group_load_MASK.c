#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi_uint ;
struct TYPE_4__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_5__ {int h; int /*<<< orphan*/  N; void* nbits; int /*<<< orphan*/  P; void* pbits; TYPE_1__ G; int /*<<< orphan*/  B; int /*<<< orphan*/  A; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( mbedtls_ecp_group *grp,
                           const mbedtls_mpi_uint *p,  size_t plen,
                           const mbedtls_mpi_uint *a,  size_t alen,
                           const mbedtls_mpi_uint *b,  size_t blen,
                           const mbedtls_mpi_uint *gx, size_t gxlen,
                           const mbedtls_mpi_uint *gy, size_t gylen,
                           const mbedtls_mpi_uint *n,  size_t nlen)
{
    FUNC0( &grp->P, p, plen );
    if( a != NULL )
        FUNC0( &grp->A, a, alen );
    FUNC0( &grp->B, b, blen );
    FUNC0( &grp->N, n, nlen );

    FUNC0( &grp->G.X, gx, gxlen );
    FUNC0( &grp->G.Y, gy, gylen );
    FUNC1( &grp->G.Z );

    grp->pbits = FUNC2( &grp->P );
    grp->nbits = FUNC2( &grp->N );

    grp->h = 1;

    return( 0 );
}