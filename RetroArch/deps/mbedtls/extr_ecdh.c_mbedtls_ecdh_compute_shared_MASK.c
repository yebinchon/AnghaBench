#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_9__ {int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,TYPE_1__ const*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7( mbedtls_ecp_group *grp, mbedtls_mpi *z,
                         const mbedtls_ecp_point *Q, const mbedtls_mpi *d,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng )
{
    int ret;
    mbedtls_ecp_point P;

    FUNC5( &P );

    /*
     * Make sure Q is a valid pubkey before using it
     */
    FUNC0( FUNC1( grp, Q ) );

    FUNC0( FUNC3( grp, &P, d, Q, f_rng, p_rng ) );

    if( FUNC2( &P ) )
    {
        ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;
        goto cleanup;
    }

    FUNC0( FUNC6( z, &P.X ) );

cleanup:
    FUNC4( &P );

    return( ret );
}