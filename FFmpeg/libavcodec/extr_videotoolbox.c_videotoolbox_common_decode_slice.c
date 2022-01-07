
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int bitstream_size; void* bitstream; int allocated_size; } ;
typedef TYPE_2__ VTContext ;
struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_5__ {TYPE_2__* hwaccel_priv_data; } ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_WB32 (void*,int) ;
 int ENOMEM ;
 void* av_fast_realloc (void*,int *,int) ;
 int memcpy (void*,int const*,int) ;

__attribute__((used)) static int videotoolbox_common_decode_slice(AVCodecContext *avctx,
                                            const uint8_t *buffer,
                                            uint32_t size)
{
    VTContext *vtctx = avctx->internal->hwaccel_priv_data;
    void *tmp;

    tmp = av_fast_realloc(vtctx->bitstream,
                          &vtctx->allocated_size,
                          vtctx->bitstream_size+size+4);
    if (!tmp)
        return AVERROR(ENOMEM);

    vtctx->bitstream = tmp;

    AV_WB32(vtctx->bitstream + vtctx->bitstream_size, size);
    memcpy(vtctx->bitstream + vtctx->bitstream_size + 4, buffer, size);

    vtctx->bitstream_size += size + 4;

    return 0;
}
