
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ccm_context ;


 void* mbedtls_calloc (int,int) ;
 int mbedtls_ccm_init (int *) ;

__attribute__((used)) static void *ccm_ctx_alloc( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_ccm_context ) );

    if( ctx != ((void*)0) )
        mbedtls_ccm_init( (mbedtls_ccm_context *) ctx );

    return( ctx );
}
