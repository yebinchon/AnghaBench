
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int* HL; int* HH; int cipher_ctx; } ;
typedef TYPE_1__ mbedtls_gcm_context ;


 int GET_UINT32_BE (int,unsigned char*,int) ;
 int MBEDTLS_AESNI_CLMUL ;
 scalar_t__ mbedtls_aesni_has_support (int ) ;
 int mbedtls_cipher_update (int *,unsigned char*,int,unsigned char*,size_t*) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int gcm_gen_table( mbedtls_gcm_context *ctx )
{
    int ret, i, j;
    uint64_t hi, lo;
    uint64_t vl, vh;
    unsigned char h[16];
    size_t olen = 0;

    memset( h, 0, 16 );
    if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, h, 16, h, &olen ) ) != 0 )
        return( ret );


    GET_UINT32_BE( hi, h, 0 );
    GET_UINT32_BE( lo, h, 4 );
    vh = (uint64_t) hi << 32 | lo;

    GET_UINT32_BE( hi, h, 8 );
    GET_UINT32_BE( lo, h, 12 );
    vl = (uint64_t) hi << 32 | lo;


    ctx->HL[8] = vl;
    ctx->HH[8] = vh;
    ctx->HH[0] = 0;
    ctx->HL[0] = 0;

    for( i = 4; i > 0; i >>= 1 )
    {
        uint32_t T = ( vl & 1 ) * 0xe1000000U;
        vl = ( vh << 63 ) | ( vl >> 1 );
        vh = ( vh >> 1 ) ^ ( (uint64_t) T << 32);

        ctx->HL[i] = vl;
        ctx->HH[i] = vh;
    }

    for( i = 2; i <= 8; i *= 2 )
    {
        uint64_t *HiL = ctx->HL + i, *HiH = ctx->HH + i;
        vh = *HiH;
        vl = *HiL;
        for( j = 1; j < i; j++ )
        {
            HiH[j] = vh ^ ctx->HH[j];
            HiL[j] = vl ^ ctx->HL[j];
        }
    }

    return( 0 );
}
