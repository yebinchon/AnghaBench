
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* total; unsigned char const* buffer; } ;
typedef TYPE_1__ mbedtls_md5_context ;


 int mbedtls_md5_process (TYPE_1__*,unsigned char const*) ;
 int memcpy (void*,unsigned char const*,size_t) ;

void mbedtls_md5_update( mbedtls_md5_context *ctx, const unsigned char *input, size_t ilen )
{
    size_t fill;
    uint32_t left;

    if( ilen == 0 )
        return;

    left = ctx->total[0] & 0x3F;
    fill = 64 - left;

    ctx->total[0] += (uint32_t) ilen;
    ctx->total[0] &= 0xFFFFFFFF;

    if( ctx->total[0] < (uint32_t) ilen )
        ctx->total[1]++;

    if( left && ilen >= fill )
    {
        memcpy( (void *) (ctx->buffer + left), input, fill );
        mbedtls_md5_process( ctx, ctx->buffer );
        input += fill;
        ilen -= fill;
        left = 0;
    }

    while( ilen >= 64 )
    {
        mbedtls_md5_process( ctx, input );
        input += 64;
        ilen -= 64;
    }

    if( ilen > 0 )
    {
        memcpy( (void *) (ctx->buffer + left), input, ilen );
    }
}
