
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int* total; unsigned char const* buffer; } ;
typedef TYPE_1__ mbedtls_sha512_context ;


 int mbedtls_sha512_process (TYPE_1__*,unsigned char const*) ;
 int memcpy (void*,unsigned char const*,size_t) ;

void mbedtls_sha512_update( mbedtls_sha512_context *ctx, const unsigned char *input,
                    size_t ilen )
{
    size_t fill;
    unsigned int left;

    if( ilen == 0 )
        return;

    left = (unsigned int) (ctx->total[0] & 0x7F);
    fill = 128 - left;

    ctx->total[0] += (uint64_t) ilen;

    if( ctx->total[0] < (uint64_t) ilen )
        ctx->total[1]++;

    if( left && ilen >= fill )
    {
        memcpy( (void *) (ctx->buffer + left), input, fill );
        mbedtls_sha512_process( ctx, ctx->buffer );
        input += fill;
        ilen -= fill;
        left = 0;
    }

    while( ilen >= 128 )
    {
        mbedtls_sha512_process( ctx, input );
        input += 128;
        ilen -= 128;
    }

    if( ilen > 0 )
        memcpy( (void *) (ctx->buffer + left), input, ilen );
}
