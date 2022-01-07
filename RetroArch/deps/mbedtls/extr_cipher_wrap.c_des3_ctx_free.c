
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_des3_context ;


 int mbedtls_des3_free (int *) ;
 int mbedtls_free (void*) ;

__attribute__((used)) static void des3_ctx_free( void *ctx )
{
    mbedtls_des3_free( (mbedtls_des3_context *) ctx );
    mbedtls_free( ctx );
}
