
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mbedtls_gcm_context ;
struct TYPE_8__ {scalar_t__ operation; size_t unprocessed_len; unsigned char const* unprocessed_data; scalar_t__ cipher_ctx; TYPE_2__* cipher_info; int iv; } ;
typedef TYPE_3__ mbedtls_cipher_context_t ;
struct TYPE_7__ {scalar_t__ mode; TYPE_1__* base; } ;
struct TYPE_6__ {int (* ecb_func ) (scalar_t__,scalar_t__,unsigned char const*,unsigned char*) ;int (* cbc_func ) (scalar_t__,scalar_t__,size_t,int ,unsigned char const*,unsigned char*) ;int (* cfb_func ) (scalar_t__,scalar_t__,size_t,size_t*,int ,unsigned char const*,unsigned char*) ;int (* ctr_func ) (scalar_t__,size_t,size_t*,int ,unsigned char const*,unsigned char const*,unsigned char*) ;int (* stream_func ) (scalar_t__,size_t,unsigned char const*,unsigned char*) ;} ;


 scalar_t__ MBEDTLS_DECRYPT ;
 scalar_t__ MBEDTLS_ENCRYPT ;
 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED ;
 int MBEDTLS_ERR_CIPHER_INVALID_CONTEXT ;
 scalar_t__ MBEDTLS_MODE_CBC ;
 scalar_t__ MBEDTLS_MODE_CFB ;
 scalar_t__ MBEDTLS_MODE_CTR ;
 scalar_t__ MBEDTLS_MODE_ECB ;
 scalar_t__ MBEDTLS_MODE_GCM ;
 scalar_t__ MBEDTLS_MODE_STREAM ;
 size_t mbedtls_cipher_get_block_size (TYPE_3__*) ;
 int mbedtls_gcm_update (int *,size_t,unsigned char const*,unsigned char*) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;
 int stub1 (scalar_t__,scalar_t__,unsigned char const*,unsigned char*) ;
 int stub2 (scalar_t__,scalar_t__,size_t,int ,unsigned char const*,unsigned char*) ;
 int stub3 (scalar_t__,scalar_t__,size_t,int ,unsigned char const*,unsigned char*) ;
 int stub4 (scalar_t__,scalar_t__,size_t,size_t*,int ,unsigned char const*,unsigned char*) ;
 int stub5 (scalar_t__,size_t,size_t*,int ,unsigned char const*,unsigned char const*,unsigned char*) ;
 int stub6 (scalar_t__,size_t,unsigned char const*,unsigned char*) ;

int mbedtls_cipher_update( mbedtls_cipher_context_t *ctx, const unsigned char *input,
                   size_t ilen, unsigned char *output, size_t *olen )
{
    int ret;
    size_t block_size = 0;

    if( ((void*)0) == ctx || ((void*)0) == ctx->cipher_info || ((void*)0) == olen )
    {
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );
    }

    *olen = 0;
    block_size = mbedtls_cipher_get_block_size( ctx );

    if( ctx->cipher_info->mode == MBEDTLS_MODE_ECB )
    {
        if( ilen != block_size )
            return( MBEDTLS_ERR_CIPHER_FULL_BLOCK_EXPECTED );

        *olen = ilen;

        if( 0 != ( ret = ctx->cipher_info->base->ecb_func( ctx->cipher_ctx,
                    ctx->operation, input, output ) ) )
        {
            return( ret );
        }

        return( 0 );
    }
    if ( 0 == block_size )
    {
        return MBEDTLS_ERR_CIPHER_INVALID_CONTEXT;
    }

    if( input == output &&
       ( ctx->unprocessed_len != 0 || ilen % block_size ) )
    {
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );
    }
    return( MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE );
}
