
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int md_ctx_dec; int md_ctx_enc; int cipher_ctx_dec; int cipher_ctx_enc; } ;
typedef TYPE_1__ mbedtls_ssl_transform ;


 int mbedtls_cipher_init (int *) ;
 int mbedtls_md_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void ssl_transform_init( mbedtls_ssl_transform *transform )
{
    memset( transform, 0, sizeof(mbedtls_ssl_transform) );

    mbedtls_cipher_init( &transform->cipher_ctx_enc );
    mbedtls_cipher_init( &transform->cipher_ctx_dec );

    mbedtls_md_init( &transform->md_ctx_enc );
    mbedtls_md_init( &transform->md_ctx_dec );
}
