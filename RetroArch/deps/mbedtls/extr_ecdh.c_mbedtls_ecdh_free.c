
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _d; int z; int d; int Vf; int Vi; int Qp; int Q; int grp; } ;
typedef TYPE_1__ mbedtls_ecdh_context ;


 int mbedtls_ecp_group_free (int *) ;
 int mbedtls_ecp_point_free (int *) ;
 int mbedtls_mpi_free (int *) ;

void mbedtls_ecdh_free( mbedtls_ecdh_context *ctx )
{
    if( ctx == ((void*)0) )
        return;

    mbedtls_ecp_group_free( &ctx->grp );
    mbedtls_ecp_point_free( &ctx->Q );
    mbedtls_ecp_point_free( &ctx->Qp );
    mbedtls_ecp_point_free( &ctx->Vi );
    mbedtls_ecp_point_free( &ctx->Vf );
    mbedtls_mpi_free( &ctx->d );
    mbedtls_mpi_free( &ctx->z );
    mbedtls_mpi_free( &ctx->_d );
}
