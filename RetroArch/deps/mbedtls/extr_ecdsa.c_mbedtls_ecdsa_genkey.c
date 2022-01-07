
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_ecp_group_id ;
struct TYPE_3__ {int Q; int d; int grp; } ;
typedef TYPE_1__ mbedtls_ecdsa_context ;


 scalar_t__ mbedtls_ecp_gen_keypair (int *,int *,int *,int (*) (void*,unsigned char*,size_t),void*) ;
 scalar_t__ mbedtls_ecp_group_load (int *,int ) ;

int mbedtls_ecdsa_genkey( mbedtls_ecdsa_context *ctx, mbedtls_ecp_group_id gid,
                  int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    return( mbedtls_ecp_group_load( &ctx->grp, gid ) ||
            mbedtls_ecp_gen_keypair( &ctx->grp, &ctx->d, &ctx->Q, f_rng, p_rng ) );
}
