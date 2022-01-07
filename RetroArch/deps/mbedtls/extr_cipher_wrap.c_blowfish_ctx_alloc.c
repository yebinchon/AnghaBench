
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbedtls_blowfish_context ;


 int mbedtls_blowfish_init (void*) ;
 scalar_t__ mbedtls_calloc (int,int) ;

__attribute__((used)) static void * blowfish_ctx_alloc( void )
{
    mbedtls_blowfish_context *ctx = (mbedtls_blowfish_context*)mbedtls_calloc( 1, sizeof( mbedtls_blowfish_context ) );

    if( ctx == ((void*)0) )
        return( ((void*)0) );

    mbedtls_blowfish_init( ctx );

    return( ctx );
}
