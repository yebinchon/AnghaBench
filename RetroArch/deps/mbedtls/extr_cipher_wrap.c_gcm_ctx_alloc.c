
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_gcm_context ;


 void* mbedtls_calloc (int,int) ;
 int mbedtls_gcm_init (int *) ;

__attribute__((used)) static void *gcm_ctx_alloc( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_gcm_context ) );

    if( ctx != ((void*)0) )
        mbedtls_gcm_init( (mbedtls_gcm_context *) ctx );

    return( ctx );
}
