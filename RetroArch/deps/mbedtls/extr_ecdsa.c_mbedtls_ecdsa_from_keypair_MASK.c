#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Q; int /*<<< orphan*/  d; int /*<<< orphan*/  grp; } ;
typedef  TYPE_1__ mbedtls_ecp_keypair ;
struct TYPE_7__ {int /*<<< orphan*/  Q; int /*<<< orphan*/  d; int /*<<< orphan*/  grp; } ;
typedef  TYPE_2__ mbedtls_ecdsa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4( mbedtls_ecdsa_context *ctx, const mbedtls_ecp_keypair *key )
{
    int ret;

    if( ( ret = FUNC2( &ctx->grp, &key->grp ) ) != 0 ||
        ( ret = FUNC3( &ctx->d, &key->d ) ) != 0 ||
        ( ret = FUNC1( &ctx->Q, &key->Q ) ) != 0 )
    {
        FUNC0( ctx );
    }

    return( ret );
}