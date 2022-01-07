
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_arc4_context ;


 int mbedtls_arc4_free (int *) ;
 int mbedtls_free (void*) ;

__attribute__((used)) static void arc4_ctx_free( void *ctx )
{
    mbedtls_arc4_free( (mbedtls_arc4_context *) ctx );
    mbedtls_free( ctx );
}
