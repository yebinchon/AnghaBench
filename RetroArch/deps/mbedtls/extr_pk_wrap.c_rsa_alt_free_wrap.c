
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_rsa_alt_context ;


 int mbedtls_free (void*) ;
 int mbedtls_zeroize (void*,int) ;

__attribute__((used)) static void rsa_alt_free_wrap( void *ctx )
{
    mbedtls_zeroize( ctx, sizeof( mbedtls_rsa_alt_context ) );
    mbedtls_free( ctx );
}
