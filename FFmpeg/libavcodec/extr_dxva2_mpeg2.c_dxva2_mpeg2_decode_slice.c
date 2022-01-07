
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct dxva2_picture_context {scalar_t__ slice_count; int * slice; int const* bitstream; int bitstream_size; } ;
struct MpegEncContext {TYPE_1__* current_picture_ptr; } ;
struct TYPE_7__ {struct MpegEncContext* priv_data; } ;
struct TYPE_6__ {struct dxva2_picture_context* hwaccel_picture_private; } ;
typedef TYPE_2__ AVCodecContext ;


 scalar_t__ MAX_SLICES ;
 int avpriv_request_sample (TYPE_2__*,char*,scalar_t__) ;
 int fill_slice (TYPE_2__*,struct MpegEncContext const*,int *,unsigned int,int const*,int ) ;

__attribute__((used)) static int dxva2_mpeg2_decode_slice(AVCodecContext *avctx,
                                    const uint8_t *buffer, uint32_t size)
{
    const struct MpegEncContext *s = avctx->priv_data;
    struct dxva2_picture_context *ctx_pic =
        s->current_picture_ptr->hwaccel_picture_private;
    unsigned position;

    if (ctx_pic->slice_count >= MAX_SLICES) {
        avpriv_request_sample(avctx, "%d slices in dxva2",
                              ctx_pic->slice_count);
        return -1;
    }
    if (!ctx_pic->bitstream)
        ctx_pic->bitstream = buffer;
    ctx_pic->bitstream_size += size;

    position = buffer - ctx_pic->bitstream;
    fill_slice(avctx, s, &ctx_pic->slice[ctx_pic->slice_count++], position,
               buffer, size);
    return 0;
}
