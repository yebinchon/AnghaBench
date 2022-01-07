
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entropy_len; scalar_t__ (* f_entropy ) (int ,unsigned char*,int) ;int reseed_counter; int p_entropy; } ;
typedef TYPE_1__ mbedtls_ctr_drbg_context ;


 int MBEDTLS_CTR_DRBG_MAX_SEED_INPUT ;
 int MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED ;
 int MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG ;
 int block_cipher_df (unsigned char*,unsigned char*,size_t) ;
 int ctr_drbg_update_internal (TYPE_1__*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ stub1 (int ,unsigned char*,int) ;

int mbedtls_ctr_drbg_reseed( mbedtls_ctr_drbg_context *ctx,
                     const unsigned char *additional, size_t len )
{
    unsigned char seed[MBEDTLS_CTR_DRBG_MAX_SEED_INPUT];
    size_t seedlen = 0;

    if( ctx->entropy_len > MBEDTLS_CTR_DRBG_MAX_SEED_INPUT ||
        len > MBEDTLS_CTR_DRBG_MAX_SEED_INPUT - ctx->entropy_len )
        return( MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG );

    memset( seed, 0, MBEDTLS_CTR_DRBG_MAX_SEED_INPUT );




    if( 0 != ctx->f_entropy( ctx->p_entropy, seed,
                             ctx->entropy_len ) )
    {
        return( MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED );
    }

    seedlen += ctx->entropy_len;




    if( additional && len )
    {
        memcpy( seed + seedlen, additional, len );
        seedlen += len;
    }




    block_cipher_df( seed, seed, seedlen );




    ctr_drbg_update_internal( ctx, seed );
    ctx->reseed_counter = 1;

    return( 0 );
}
