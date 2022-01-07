
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbedtls_arc4_context ;


 int mbedtls_arc4_init (void*) ;
 scalar_t__ mbedtls_calloc (int,int) ;

__attribute__((used)) static void * arc4_ctx_alloc( void )
{
    mbedtls_arc4_context *ctx = (mbedtls_arc4_context*)mbedtls_calloc( 1, sizeof( mbedtls_arc4_context ) );

    if( ctx == ((void*)0) )
        return( ((void*)0) );

    mbedtls_arc4_init( ctx );

    return( ctx );
}
