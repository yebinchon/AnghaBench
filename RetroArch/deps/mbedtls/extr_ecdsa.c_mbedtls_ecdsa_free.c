
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ecdsa_context ;


 int mbedtls_ecp_keypair_free (int *) ;

void mbedtls_ecdsa_free( mbedtls_ecdsa_context *ctx )
{
    mbedtls_ecp_keypair_free( ctx );
}
