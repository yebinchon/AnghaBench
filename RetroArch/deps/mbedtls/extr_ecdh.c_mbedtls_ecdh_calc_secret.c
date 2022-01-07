
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pbits; } ;
struct TYPE_4__ {int z; TYPE_2__ grp; int d; int Qp; } ;
typedef TYPE_1__ mbedtls_ecdh_context ;


 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int mbedtls_ecdh_compute_shared (TYPE_2__*,int *,int *,int *,int (*) (void*,unsigned char*,size_t),void*) ;
 size_t mbedtls_mpi_size (int *) ;
 int mbedtls_mpi_write_binary (int *,unsigned char*,size_t) ;

int mbedtls_ecdh_calc_secret( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng )
{
    int ret;

    if( ctx == ((void*)0) )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = mbedtls_ecdh_compute_shared( &ctx->grp, &ctx->z, &ctx->Qp, &ctx->d,
                                     f_rng, p_rng ) ) != 0 )
    {
        return( ret );
    }

    if( mbedtls_mpi_size( &ctx->z ) > blen )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    *olen = ctx->grp.pbits / 8 + ( ( ctx->grp.pbits % 8 ) != 0 );
    return mbedtls_mpi_write_binary( &ctx->z, buf, *olen );
}
