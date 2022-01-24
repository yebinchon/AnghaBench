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
struct TYPE_5__ {int pbits; } ;
struct TYPE_4__ {int /*<<< orphan*/  z; TYPE_2__ grp; int /*<<< orphan*/  d; int /*<<< orphan*/  Qp; } ;
typedef  TYPE_1__ mbedtls_ecdh_context ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (void*,unsigned char*,size_t),void*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

int FUNC3( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng )
{
    int ret;

    if( ctx == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = FUNC0( &ctx->grp, &ctx->z, &ctx->Qp, &ctx->d,
                                     f_rng, p_rng ) ) != 0 )
    {
        return( ret );
    }

    if( FUNC1( &ctx->z ) > blen )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    *olen = ctx->grp.pbits / 8 + ( ( ctx->grp.pbits % 8 ) != 0 );
    return FUNC2( &ctx->z, buf, *olen );
}