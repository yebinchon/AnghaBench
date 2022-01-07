
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ecp_keypair ;


 void* mbedtls_calloc (int,int) ;
 int mbedtls_ecp_keypair_init (void*) ;

__attribute__((used)) static void *eckey_alloc_wrap( void )
{
    void *ctx = mbedtls_calloc( 1, sizeof( mbedtls_ecp_keypair ) );

    if( ctx != ((void*)0) )
        mbedtls_ecp_keypair_init( ctx );

    return( ctx );
}
