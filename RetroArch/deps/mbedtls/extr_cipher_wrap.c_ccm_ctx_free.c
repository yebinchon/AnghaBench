
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ccm_context ;


 int mbedtls_ccm_free (int *) ;
 int mbedtls_free (void*) ;

__attribute__((used)) static void ccm_ctx_free( void *ctx )
{
    mbedtls_ccm_free((mbedtls_ccm_context*)ctx);
    mbedtls_free( ctx );
}
