#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  d; int /*<<< orphan*/  Q; int /*<<< orphan*/  grp; } ;
typedef  TYPE_1__ mbedtls_ecp_keypair ;
typedef  scalar_t__ mbedtls_ecdh_side ;
struct TYPE_6__ {int /*<<< orphan*/  d; int /*<<< orphan*/  Q; int /*<<< orphan*/  Qp; int /*<<< orphan*/  grp; } ;
typedef  TYPE_2__ mbedtls_ecdh_context ;

/* Variables and functions */
 scalar_t__ MBEDTLS_ECDH_OURS ; 
 scalar_t__ MBEDTLS_ECDH_THEIRS ; 
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3( mbedtls_ecdh_context *ctx, const mbedtls_ecp_keypair *key,
                     mbedtls_ecdh_side side )
{
    int ret;

    if( ( ret = FUNC1( &ctx->grp, &key->grp ) ) != 0 )
        return( ret );

    /* If it's not our key, just import the public part as Qp */
    if( side == MBEDTLS_ECDH_THEIRS )
        return( FUNC0( &ctx->Qp, &key->Q ) );

    /* Our key: import public (as Q) and private parts */
    if( side != MBEDTLS_ECDH_OURS )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = FUNC0( &ctx->Q, &key->Q ) ) != 0 ||
        ( ret = FUNC2( &ctx->d, &key->d ) ) != 0 )
        return( ret );

    return( 0 );
}