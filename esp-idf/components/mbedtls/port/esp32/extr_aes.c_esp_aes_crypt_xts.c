
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tweak ;
struct TYPE_3__ {int crypt; int tweak; } ;
typedef TYPE_1__ esp_aes_xts_context ;


 int MBEDTLS_AES_DECRYPT ;
 int MBEDTLS_AES_ENCRYPT ;
 int MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH ;
 int esp_aes_crypt_ecb (int *,int,unsigned char const*,unsigned char*) ;
 int esp_gf128mul_x_ble (unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

int esp_aes_crypt_xts( esp_aes_xts_context *ctx,
                           int mode,
                           size_t length,
                           const unsigned char data_unit[16],
                           const unsigned char *input,
                           unsigned char *output )
{
    int ret;
    size_t blocks = length / 16;
    size_t leftover = length % 16;
    unsigned char tweak[16];
    unsigned char prev_tweak[16];
    unsigned char tmp[16];


    if( length < 16 )
        return MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH;


    if( length > ( 1 << 20 ) * 16 )
        return MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH;


    ret = esp_aes_crypt_ecb( &ctx->tweak, MBEDTLS_AES_ENCRYPT,
                                 data_unit, tweak );
    if( ret != 0 )
        return( ret );

    while( blocks-- )
    {
        size_t i;

        if( leftover && ( mode == MBEDTLS_AES_DECRYPT ) && blocks == 0 )
        {





            memcpy( prev_tweak, tweak, sizeof( tweak ) );
            esp_gf128mul_x_ble( tweak, tweak );
        }

        for( i = 0; i < 16; i++ )
            tmp[i] = input[i] ^ tweak[i];

        ret = esp_aes_crypt_ecb( &ctx->crypt, mode, tmp, tmp );
        if( ret != 0 )
            return( ret );

        for( i = 0; i < 16; i++ )
            output[i] = tmp[i] ^ tweak[i];


        esp_gf128mul_x_ble( tweak, tweak );

        output += 16;
        input += 16;
    }

    if( leftover )
    {


        unsigned char *t = mode == MBEDTLS_AES_DECRYPT ? prev_tweak : tweak;



        size_t i;
        unsigned char *prev_output = output - 16;





        for( i = 0; i < leftover; i++ )
        {
            output[i] = prev_output[i];
            tmp[i] = input[i] ^ t[i];
        }



        for( ; i < 16; i++ )
            tmp[i] = prev_output[i] ^ t[i];

        ret = esp_aes_crypt_ecb( &ctx->crypt, mode, tmp, tmp );
        if( ret != 0 )
            return ret;



        for( i = 0; i < 16; i++ )
            prev_output[i] = tmp[i] ^ t[i];
    }

    return( 0 );
}
