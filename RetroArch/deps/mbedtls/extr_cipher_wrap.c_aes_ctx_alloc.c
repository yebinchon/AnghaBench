
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbedtls_aes_context ;


 int mbedtls_aes_init (void*) ;
 scalar_t__ mbedtls_calloc (int,int) ;

__attribute__((used)) static void * aes_ctx_alloc( void )
{
    mbedtls_aes_context *aes = (mbedtls_aes_context*)mbedtls_calloc( 1, sizeof( mbedtls_aes_context ) );

    if( aes == ((void*)0) )
        return( ((void*)0) );

    mbedtls_aes_init( aes );

    return( aes );
}
