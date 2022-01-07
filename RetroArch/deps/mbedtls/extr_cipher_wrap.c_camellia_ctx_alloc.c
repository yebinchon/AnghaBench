
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbedtls_camellia_context ;


 scalar_t__ mbedtls_calloc (int,int) ;
 int mbedtls_camellia_init (void*) ;

__attribute__((used)) static void * camellia_ctx_alloc( void )
{
    mbedtls_camellia_context *ctx = (mbedtls_camellia_context*)
       mbedtls_calloc( 1, sizeof( mbedtls_camellia_context ) );

    if( ctx == ((void*)0) )
        return( ((void*)0) );

    mbedtls_camellia_init( ctx );

    return( ctx );
}
