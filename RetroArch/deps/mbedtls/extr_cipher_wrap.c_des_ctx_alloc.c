
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbedtls_des_context ;


 scalar_t__ mbedtls_calloc (int,int) ;
 int mbedtls_des_init (void*) ;

__attribute__((used)) static void * des_ctx_alloc( void )
{
    mbedtls_des_context *des = (mbedtls_des_context*)
       mbedtls_calloc( 1, sizeof( mbedtls_des_context ) );

    if( des == ((void*)0) )
        return( ((void*)0) );

    mbedtls_des_init( des );

    return( des );
}
