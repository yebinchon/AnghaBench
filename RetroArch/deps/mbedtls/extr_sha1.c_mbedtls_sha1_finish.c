
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* total; int* state; } ;
typedef TYPE_1__ mbedtls_sha1_context ;


 int PUT_UINT32_BE (int,unsigned char*,int) ;
 int mbedtls_sha1_update (TYPE_1__*,unsigned char*,int) ;
 unsigned char* sha1_padding ;

void mbedtls_sha1_finish( mbedtls_sha1_context *ctx, unsigned char output[20] )
{
    uint32_t last, padn;
    uint32_t high, low;
    unsigned char msglen[8];

    high = ( ctx->total[0] >> 29 )
         | ( ctx->total[1] << 3 );
    low = ( ctx->total[0] << 3 );

    PUT_UINT32_BE( high, msglen, 0 );
    PUT_UINT32_BE( low, msglen, 4 );

    last = ctx->total[0] & 0x3F;
    padn = ( last < 56 ) ? ( 56 - last ) : ( 120 - last );

    mbedtls_sha1_update( ctx, sha1_padding, padn );
    mbedtls_sha1_update( ctx, msglen, 8 );

    PUT_UINT32_BE( ctx->state[0], output, 0 );
    PUT_UINT32_BE( ctx->state[1], output, 4 );
    PUT_UINT32_BE( ctx->state[2], output, 8 );
    PUT_UINT32_BE( ctx->state[3], output, 12 );
    PUT_UINT32_BE( ctx->state[4], output, 16 );
}
