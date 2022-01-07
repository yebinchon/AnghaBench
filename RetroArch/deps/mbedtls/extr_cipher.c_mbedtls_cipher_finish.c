
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ unprocessed_len; scalar_t__ operation; int (* get_padding ) (unsigned char*,size_t,size_t*) ;int unprocessed_data; int iv; int cipher_ctx; TYPE_2__* cipher_info; int (* add_padding ) (int ,int ,scalar_t__) ;} ;
typedef TYPE_3__ mbedtls_cipher_context_t ;
struct TYPE_8__ {scalar_t__ mode; TYPE_1__* base; } ;
struct TYPE_7__ {int (* cbc_func ) (int ,scalar_t__,size_t,int ,int ,unsigned char*) ;} ;


 scalar_t__ MBEDTLS_DECRYPT ;
 scalar_t__ MBEDTLS_ENCRYPT ;
 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED ;
 scalar_t__ MBEDTLS_MODE_CBC ;
 scalar_t__ MBEDTLS_MODE_CFB ;
 scalar_t__ MBEDTLS_MODE_CTR ;
 scalar_t__ MBEDTLS_MODE_ECB ;
 scalar_t__ MBEDTLS_MODE_GCM ;
 scalar_t__ MBEDTLS_MODE_STREAM ;
 size_t mbedtls_cipher_get_block_size (TYPE_3__*) ;
 int mbedtls_cipher_get_iv_size (TYPE_3__*) ;
 int stub1 (int ,int ,scalar_t__) ;
 int stub2 (int ,scalar_t__,size_t,int ,int ,unsigned char*) ;
 int stub3 (unsigned char*,size_t,size_t*) ;

int mbedtls_cipher_finish( mbedtls_cipher_context_t *ctx,
                   unsigned char *output, size_t *olen )
{
    if( ((void*)0) == ctx || ((void*)0) == ctx->cipher_info || ((void*)0) == olen )
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );

    *olen = 0;

    if( MBEDTLS_MODE_CFB == ctx->cipher_info->mode ||
        MBEDTLS_MODE_CTR == ctx->cipher_info->mode ||
        MBEDTLS_MODE_GCM == ctx->cipher_info->mode ||
        MBEDTLS_MODE_STREAM == ctx->cipher_info->mode )
    {
        return( 0 );
    }

    if( MBEDTLS_MODE_ECB == ctx->cipher_info->mode )
    {
        if( ctx->unprocessed_len != 0 )
            return( MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED );

        return( 0 );
    }
    ((void) output);


    return( MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE );
}
