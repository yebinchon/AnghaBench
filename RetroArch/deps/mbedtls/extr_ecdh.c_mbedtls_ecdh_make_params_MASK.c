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
struct TYPE_7__ {scalar_t__ pbits; } ;
struct TYPE_6__ {int /*<<< orphan*/  point_format; int /*<<< orphan*/  Q; TYPE_2__ grp; int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ mbedtls_ecdh_context ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (void*,unsigned char*,size_t),void*) ; 
 int FUNC1 (TYPE_2__*,size_t*,unsigned char*,size_t) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,unsigned char*,size_t) ; 

int FUNC3( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng )
{
    int ret;
    size_t grp_len, pt_len;

    if( ctx == NULL || ctx->grp.pbits == 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = FUNC0( &ctx->grp, &ctx->d, &ctx->Q, f_rng, p_rng ) )
                != 0 )
        return( ret );

    if( ( ret = FUNC1( &ctx->grp, &grp_len, buf, blen ) )
                != 0 )
        return( ret );

    buf += grp_len;
    blen -= grp_len;

    if( ( ret = FUNC2( &ctx->grp, &ctx->Q, ctx->point_format,
                                     &pt_len, buf, blen ) ) != 0 )
        return( ret );

    *olen = grp_len + pt_len;
    return( 0 );
}