
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extensions; int issuer; int subject; int serial; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;


 int mbedtls_asn1_free_named_data_list (int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_x509write_crt_free( mbedtls_x509write_cert *ctx )
{
    mbedtls_mpi_free( &ctx->serial );

    mbedtls_asn1_free_named_data_list( &ctx->subject );
    mbedtls_asn1_free_named_data_list( &ctx->issuer );
    mbedtls_asn1_free_named_data_list( &ctx->extensions );

    mbedtls_zeroize( ctx, sizeof(mbedtls_x509write_cert) );
}
