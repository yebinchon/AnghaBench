
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pbits; } ;
struct TYPE_5__ {int point_format; int Q; TYPE_2__ grp; int d; } ;
typedef TYPE_1__ mbedtls_ecdh_context ;


 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int mbedtls_ecdh_gen_public (TYPE_2__*,int *,int *,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_ecp_tls_write_point (TYPE_2__*,int *,int ,size_t*,unsigned char*,size_t) ;

int mbedtls_ecdh_make_public( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng )
{
    int ret;

    if( ctx == ((void*)0) || ctx->grp.pbits == 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_ecdh_gen_public( &ctx->grp, &ctx->d, &ctx->Q, f_rng, p_rng ) )
                != 0 )
        return( ret );

    return mbedtls_ecp_tls_write_point( &ctx->grp, &ctx->Q, ctx->point_format,
                                olen, buf, blen );
}
