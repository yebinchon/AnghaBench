
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int N; int E; int D; int P; int Q; int DP; int DQ; int QP; int RN; int RP; int RQ; int Vf; int Vi; } ;
typedef TYPE_1__ mbedtls_rsa_context ;


 int mbedtls_mpi_free (int *) ;
 int mbedtls_mutex_free (int *) ;

void mbedtls_rsa_free( mbedtls_rsa_context *ctx )
{
    mbedtls_mpi_free( &ctx->Vi ); mbedtls_mpi_free( &ctx->Vf );
    mbedtls_mpi_free( &ctx->RQ ); mbedtls_mpi_free( &ctx->RP ); mbedtls_mpi_free( &ctx->RN );
    mbedtls_mpi_free( &ctx->QP ); mbedtls_mpi_free( &ctx->DQ ); mbedtls_mpi_free( &ctx->DP );
    mbedtls_mpi_free( &ctx->Q ); mbedtls_mpi_free( &ctx->P ); mbedtls_mpi_free( &ctx->D );
    mbedtls_mpi_free( &ctx->E ); mbedtls_mpi_free( &ctx->N );




}
