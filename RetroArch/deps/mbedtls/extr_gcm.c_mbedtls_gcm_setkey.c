
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cipher_ctx; } ;
typedef TYPE_1__ mbedtls_gcm_context ;
struct TYPE_8__ {int block_size; } ;
typedef TYPE_2__ mbedtls_cipher_info_t ;
typedef int mbedtls_cipher_id_t ;


 int MBEDTLS_ENCRYPT ;
 int MBEDTLS_ERR_GCM_BAD_INPUT ;
 int MBEDTLS_MODE_ECB ;
 int gcm_gen_table (TYPE_1__*) ;
 int mbedtls_cipher_free (int *) ;
 TYPE_2__* mbedtls_cipher_info_from_values (int ,unsigned int,int ) ;
 int mbedtls_cipher_setkey (int *,unsigned char const*,unsigned int,int ) ;
 int mbedtls_cipher_setup (int *,TYPE_2__ const*) ;

int mbedtls_gcm_setkey( mbedtls_gcm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits )
{
    int ret;
    const mbedtls_cipher_info_t *cipher_info;

    cipher_info = mbedtls_cipher_info_from_values( cipher, keybits, MBEDTLS_MODE_ECB );
    if( cipher_info == ((void*)0) )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    if( cipher_info->block_size != 16 )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    mbedtls_cipher_free( &ctx->cipher_ctx );

    if( ( ret = mbedtls_cipher_setup( &ctx->cipher_ctx, cipher_info ) ) != 0 )
        return( ret );

    if( ( ret = mbedtls_cipher_setkey( &ctx->cipher_ctx, key, keybits,
                               MBEDTLS_ENCRYPT ) ) != 0 )
    {
        return( ret );
    }

    if( ( ret = gcm_gen_table( ctx ) ) != 0 )
        return( ret );

    return( 0 );
}
