
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sal_md5_context {int* total; int * buffer; } ;


 int memcpy (void*,void*,int) ;
 int sal_md5_process (struct sal_md5_context*,int *) ;

void sal_md5_update( struct sal_md5_context *ctx, uint8_t *input, uint32_t length )
{
    uint32_t left, fill;

    if( ! length ) return;

    left = ( ctx->total[0] >> 3 ) & 0x3F;
    fill = 64 - left;

    ctx->total[0] += length << 3;
    ctx->total[1] += length >> 29;

    ctx->total[0] &= 0xFFFFFFFF;
    ctx->total[1] += ctx->total[0] < ( length << 3 );

    if( left && length >= fill )
    {
        memcpy( (void *) (ctx->buffer + left), (void *) input, fill );
        sal_md5_process( ctx, ctx->buffer );
        length -= fill;
        input += fill;
        left = 0;
    }

    while( length >= 64 )
    {
        sal_md5_process( ctx, input );
        length -= 64;
        input += 64;
    }

    if( length )
    {
        memcpy( (void *) (ctx->buffer + left), (void *) input, length );
    }
}
