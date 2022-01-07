
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbedtls_des3_context ;


 scalar_t__ mbedtls_calloc (int,int) ;
 int mbedtls_des3_init (void*) ;

__attribute__((used)) static void * des3_ctx_alloc( void )
{
    mbedtls_des3_context *des3 = (mbedtls_des3_context*)mbedtls_calloc( 1, sizeof( mbedtls_des3_context ) );

    if( des3 == ((void*)0) )
        return( ((void*)0) );

    mbedtls_des3_init( des3 );

    return( des3 );
}
