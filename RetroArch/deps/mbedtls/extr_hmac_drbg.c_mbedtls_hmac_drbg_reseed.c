
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t entropy_len; scalar_t__ (* f_entropy ) (int ,unsigned char*,size_t) ;int reseed_counter; int p_entropy; } ;
typedef TYPE_1__ mbedtls_hmac_drbg_context ;


 int MBEDTLS_ERR_HMAC_DRBG_ENTROPY_SOURCE_FAILED ;
 int MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG ;
 size_t MBEDTLS_HMAC_DRBG_MAX_INPUT ;
 int MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT ;
 int mbedtls_hmac_drbg_update (TYPE_1__*,unsigned char*,size_t) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ stub1 (int ,unsigned char*,size_t) ;

int mbedtls_hmac_drbg_reseed( mbedtls_hmac_drbg_context *ctx,
                      const unsigned char *additional, size_t len )
{
    unsigned char seed[MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT];
    size_t seedlen;


    if( len > MBEDTLS_HMAC_DRBG_MAX_INPUT ||
        ctx->entropy_len + len > MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT )
    {
        return( MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG );
    }

    memset( seed, 0, MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT );


    if( ctx->f_entropy( ctx->p_entropy, seed, ctx->entropy_len ) != 0 )
        return( MBEDTLS_ERR_HMAC_DRBG_ENTROPY_SOURCE_FAILED );

    seedlen = ctx->entropy_len;


    if( additional != ((void*)0) && len != 0 )
    {
        memcpy( seed + seedlen, additional, len );
        seedlen += len;
    }


    mbedtls_hmac_drbg_update( ctx, seed, seedlen );


    ctx->reseed_counter = 1;


    return( 0 );
}
