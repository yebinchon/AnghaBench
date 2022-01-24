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
struct TYPE_3__ {int /*<<< orphan*/  Q; int /*<<< orphan*/  d; int /*<<< orphan*/  grp; } ;
typedef  TYPE_1__ mbedtls_ecp_keypair ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (void*,unsigned char*,size_t),void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret;

    if( ( ret = FUNC1( &key->grp, grp_id ) ) != 0 )
        return( ret );

    return( FUNC0( &key->grp, &key->d, &key->Q, f_rng, p_rng ) );
}