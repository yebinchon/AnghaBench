
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* counter; int aes_ctx; } ;
typedef TYPE_1__ mbedtls_ctr_drbg_context ;


 int MBEDTLS_AES_ENCRYPT ;
 int MBEDTLS_CTR_DRBG_BLOCKSIZE ;
 int MBEDTLS_CTR_DRBG_KEYBITS ;
 int MBEDTLS_CTR_DRBG_KEYSIZE ;
 int MBEDTLS_CTR_DRBG_SEEDLEN ;
 int mbedtls_aes_crypt_ecb (int *,int ,scalar_t__*,unsigned char*) ;
 int mbedtls_aes_setkey_enc (int *,unsigned char*,int ) ;
 int memcpy (scalar_t__*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int ctr_drbg_update_internal( mbedtls_ctr_drbg_context *ctx,
                              const unsigned char data[MBEDTLS_CTR_DRBG_SEEDLEN] )
{
    unsigned char tmp[MBEDTLS_CTR_DRBG_SEEDLEN];
    unsigned char *p = tmp;
    int i, j;

    memset( tmp, 0, MBEDTLS_CTR_DRBG_SEEDLEN );

    for( j = 0; j < MBEDTLS_CTR_DRBG_SEEDLEN; j += MBEDTLS_CTR_DRBG_BLOCKSIZE )
    {



        for( i = MBEDTLS_CTR_DRBG_BLOCKSIZE; i > 0; i-- )
            if( ++ctx->counter[i - 1] != 0 )
                break;




        mbedtls_aes_crypt_ecb( &ctx->aes_ctx, MBEDTLS_AES_ENCRYPT, ctx->counter, p );

        p += MBEDTLS_CTR_DRBG_BLOCKSIZE;
    }

    for( i = 0; i < MBEDTLS_CTR_DRBG_SEEDLEN; i++ )
        tmp[i] ^= data[i];




    mbedtls_aes_setkey_enc( &ctx->aes_ctx, tmp, MBEDTLS_CTR_DRBG_KEYBITS );
    memcpy( ctx->counter, tmp + MBEDTLS_CTR_DRBG_KEYSIZE, MBEDTLS_CTR_DRBG_BLOCKSIZE );

    return( 0 );
}
