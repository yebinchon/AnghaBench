
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int* rk; int* buf; int nr; } ;
typedef TYPE_1__ mbedtls_aes_context ;


 size_t* FSb ;
 int MBEDTLS_AESNI_AES ;
 int MBEDTLS_PADLOCK_ACE ;
 int* MBEDTLS_PADLOCK_ALIGN16 (int*) ;
 int* RT0 ;
 int* RT1 ;
 int* RT2 ;
 int* RT3 ;
 int aes_padlock_ace ;
 int mbedtls_aes_free (TYPE_1__*) ;
 int mbedtls_aes_init (TYPE_1__*) ;
 int mbedtls_aes_setkey_enc (TYPE_1__*,unsigned char const*,unsigned int) ;
 scalar_t__ mbedtls_aesni_has_support (int ) ;
 int mbedtls_aesni_inverse_key (unsigned char*,unsigned char const*,int) ;
 int mbedtls_padlock_has_support (int ) ;

int mbedtls_aes_setkey_dec( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits )
{
    int i, j, ret;
    mbedtls_aes_context cty;
    uint32_t *RK;
    uint32_t *SK;

    mbedtls_aes_init( &cty );
    ctx->rk = RK = ctx->buf;


    if( ( ret = mbedtls_aes_setkey_enc( &cty, key, keybits ) ) != 0 )
        goto exit;

    ctx->nr = cty.nr;
    SK = cty.rk + cty.nr * 4;

    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;

    for( i = ctx->nr - 1, SK -= 8; i > 0; i--, SK -= 8 )
    {
        for( j = 0; j < 4; j++, SK++ )
        {
            *RK++ = RT0[ FSb[ ( *SK ) & 0xFF ] ] ^
                    RT1[ FSb[ ( *SK >> 8 ) & 0xFF ] ] ^
                    RT2[ FSb[ ( *SK >> 16 ) & 0xFF ] ] ^
                    RT3[ FSb[ ( *SK >> 24 ) & 0xFF ] ];
        }
    }

    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;

exit:
    mbedtls_aes_free( &cty );

    return( ret );
}
