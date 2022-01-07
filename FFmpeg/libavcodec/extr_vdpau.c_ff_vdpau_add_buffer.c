
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct vdpau_picture_context {int bitstream_buffers_used; TYPE_1__* bitstream_buffers; int bitstream_buffers_allocated; } ;
struct TYPE_4__ {int bitstream_bytes; int const* bitstream; int struct_version; } ;
typedef TYPE_1__ VdpBitstreamBuffer ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int VDP_BITSTREAM_BUFFER_VERSION ;
 TYPE_1__* av_fast_realloc (TYPE_1__*,int *,int) ;

int ff_vdpau_add_buffer(struct vdpau_picture_context *pic_ctx,
                        const uint8_t *buf, uint32_t size)
{
    VdpBitstreamBuffer *buffers = pic_ctx->bitstream_buffers;

    buffers = av_fast_realloc(buffers, &pic_ctx->bitstream_buffers_allocated,
                              (pic_ctx->bitstream_buffers_used + 1) * sizeof(*buffers));
    if (!buffers)
        return AVERROR(ENOMEM);

    pic_ctx->bitstream_buffers = buffers;
    buffers += pic_ctx->bitstream_buffers_used++;

    buffers->struct_version = VDP_BITSTREAM_BUFFER_VERSION;
    buffers->bitstream = buf;
    buffers->bitstream_bytes = size;
    return 0;
}
