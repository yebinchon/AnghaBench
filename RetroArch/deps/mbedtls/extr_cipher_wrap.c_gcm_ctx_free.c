
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_gcm_context ;


 int mbedtls_free (void*) ;
 int mbedtls_gcm_free (int *) ;

__attribute__((used)) static void gcm_ctx_free( void *ctx )
{
    mbedtls_gcm_free((mbedtls_gcm_context*)ctx);
    mbedtls_free(ctx);
}
