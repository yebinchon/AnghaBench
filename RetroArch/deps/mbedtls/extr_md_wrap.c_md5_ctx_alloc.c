
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md5_context ;


 void* mbedtls_calloc (int,int) ;
 int mbedtls_md5_init (int *) ;

__attribute__((used)) static void *md5_ctx_alloc( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_md5_context ) );

    if( ctx != ((void*)0) )
        mbedtls_md5_init( (mbedtls_md5_context *) ctx );

    return( ctx );
}
