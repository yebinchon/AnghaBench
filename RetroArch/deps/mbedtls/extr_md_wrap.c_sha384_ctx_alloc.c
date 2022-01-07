
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;


 void* mbedtls_calloc (int,int) ;
 int mbedtls_sha512_init (int *) ;

__attribute__((used)) static void *sha384_ctx_alloc( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_sha512_context ) );

    if( ctx != ((void*)0) )
        mbedtls_sha512_init( (mbedtls_sha512_context *) ctx );

    return( ctx );
}
