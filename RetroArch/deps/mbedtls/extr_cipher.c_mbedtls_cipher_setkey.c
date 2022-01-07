
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mbedtls_operation_t ;
struct TYPE_7__ {int key_bitlen; scalar_t__ operation; int cipher_ctx; TYPE_2__* cipher_info; } ;
typedef TYPE_3__ mbedtls_cipher_context_t ;
struct TYPE_6__ {int flags; scalar_t__ mode; TYPE_1__* base; scalar_t__ key_bitlen; } ;
struct TYPE_5__ {int (* setkey_enc_func ) (int ,unsigned char const*,int) ;int (* setkey_dec_func ) (int ,unsigned char const*,int) ;} ;


 int MBEDTLS_CIPHER_VARIABLE_KEY_LEN ;
 scalar_t__ const MBEDTLS_DECRYPT ;
 scalar_t__ const MBEDTLS_ENCRYPT ;
 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;
 scalar_t__ MBEDTLS_MODE_CFB ;
 scalar_t__ MBEDTLS_MODE_CTR ;
 int stub1 (int ,unsigned char const*,int) ;
 int stub2 (int ,unsigned char const*,int) ;

int mbedtls_cipher_setkey( mbedtls_cipher_context_t *ctx, const unsigned char *key,
        int key_bitlen, const mbedtls_operation_t operation )
{
    if( ((void*)0) == ctx || ((void*)0) == ctx->cipher_info )
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );

    if( ( ctx->cipher_info->flags & MBEDTLS_CIPHER_VARIABLE_KEY_LEN ) == 0 &&
        (int) ctx->cipher_info->key_bitlen != key_bitlen )
    {
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );
    }

    ctx->key_bitlen = key_bitlen;
    ctx->operation = operation;




    if( MBEDTLS_ENCRYPT == operation ||
        MBEDTLS_MODE_CFB == ctx->cipher_info->mode ||
        MBEDTLS_MODE_CTR == ctx->cipher_info->mode )
    {
        return ctx->cipher_info->base->setkey_enc_func( ctx->cipher_ctx, key,
                ctx->key_bitlen );
    }

    if( MBEDTLS_DECRYPT == operation )
        return ctx->cipher_info->base->setkey_dec_func( ctx->cipher_ctx, key,
                ctx->key_bitlen );

    return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );
}
