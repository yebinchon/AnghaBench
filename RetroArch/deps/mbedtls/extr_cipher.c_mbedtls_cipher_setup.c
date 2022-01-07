
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* base; } ;
typedef TYPE_2__ mbedtls_cipher_info_t ;
struct TYPE_10__ {TYPE_2__ const* cipher_info; int * cipher_ctx; } ;
typedef TYPE_3__ mbedtls_cipher_context_t ;
struct TYPE_8__ {int * (* ctx_alloc_func ) () ;} ;


 int MBEDTLS_ERR_CIPHER_ALLOC_FAILED ;
 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;
 int MBEDTLS_PADDING_NONE ;
 int MBEDTLS_PADDING_PKCS7 ;
 int mbedtls_cipher_set_padding_mode (TYPE_3__*,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int * stub1 () ;

int mbedtls_cipher_setup( mbedtls_cipher_context_t *ctx, const mbedtls_cipher_info_t *cipher_info )
{
    if( ((void*)0) == cipher_info || ((void*)0) == ctx )
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );

    memset( ctx, 0, sizeof( mbedtls_cipher_context_t ) );

    if( ((void*)0) == ( ctx->cipher_ctx = cipher_info->base->ctx_alloc_func() ) )
        return( MBEDTLS_ERR_CIPHER_ALLOC_FAILED );

    ctx->cipher_info = cipher_info;
    return( 0 );
}
