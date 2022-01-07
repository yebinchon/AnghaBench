
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Q; int d; int grp; } ;
typedef TYPE_1__ mbedtls_ecp_keypair ;
struct TYPE_7__ {int Q; int d; int grp; } ;
typedef TYPE_2__ mbedtls_ecdsa_context ;


 int mbedtls_ecdsa_free (TYPE_2__*) ;
 int mbedtls_ecp_copy (int *,int *) ;
 int mbedtls_ecp_group_copy (int *,int *) ;
 int mbedtls_mpi_copy (int *,int *) ;

int mbedtls_ecdsa_from_keypair( mbedtls_ecdsa_context *ctx, const mbedtls_ecp_keypair *key )
{
    int ret;

    if( ( ret = mbedtls_ecp_group_copy( &ctx->grp, &key->grp ) ) != 0 ||
        ( ret = mbedtls_mpi_copy( &ctx->d, &key->d ) ) != 0 ||
        ( ret = mbedtls_ecp_copy( &ctx->Q, &key->Q ) ) != 0 )
    {
        mbedtls_ecdsa_free( ctx );
    }

    return( ret );
}
