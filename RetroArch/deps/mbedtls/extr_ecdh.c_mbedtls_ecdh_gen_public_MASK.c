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
typedef  int /*<<< orphan*/  mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (void*,unsigned char*,size_t),void*) ; 

int FUNC1( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    return FUNC0( grp, d, Q, f_rng, p_rng );
}