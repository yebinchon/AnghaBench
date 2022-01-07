
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int P; int G; int X; int GX; int GY; int K; int RP; int Vi; int Vf; int pX; } ;
typedef TYPE_1__ mbedtls_dhm_context ;


 int mbedtls_mpi_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_dhm_free( mbedtls_dhm_context *ctx )
{
    mbedtls_mpi_free( &ctx->pX); mbedtls_mpi_free( &ctx->Vf ); mbedtls_mpi_free( &ctx->Vi );
    mbedtls_mpi_free( &ctx->RP ); mbedtls_mpi_free( &ctx->K ); mbedtls_mpi_free( &ctx->GY );
    mbedtls_mpi_free( &ctx->GX ); mbedtls_mpi_free( &ctx->X ); mbedtls_mpi_free( &ctx->G );
    mbedtls_mpi_free( &ctx->P );

    mbedtls_zeroize( ctx, sizeof( mbedtls_dhm_context ) );
}
