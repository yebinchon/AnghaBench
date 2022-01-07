
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int md_ctx_dec; int md_ctx_enc; int cipher_ctx_dec; int cipher_ctx_enc; int ctx_inflate; int ctx_deflate; } ;
typedef TYPE_1__ mbedtls_ssl_transform ;


 int deflateEnd (int *) ;
 int inflateEnd (int *) ;
 int mbedtls_cipher_free (int *) ;
 int mbedtls_md_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_ssl_transform_free( mbedtls_ssl_transform *transform )
{
    if( transform == ((void*)0) )
        return;






    mbedtls_cipher_free( &transform->cipher_ctx_enc );
    mbedtls_cipher_free( &transform->cipher_ctx_dec );

    mbedtls_md_free( &transform->md_ctx_enc );
    mbedtls_md_free( &transform->md_ctx_dec );

    mbedtls_zeroize( transform, sizeof( mbedtls_ssl_transform ) );
}
