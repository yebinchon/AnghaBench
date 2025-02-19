
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef int uint8_t ;
struct dxva2_picture_context {unsigned int slice_count; TYPE_2__* slice; int * bitstream; } ;
struct MpegEncContext {scalar_t__ picture_structure; int const mb_width; int const mb_height; TYPE_1__* current_picture_ptr; } ;
struct TYPE_24__ {scalar_t__ pix_fmt; struct MpegEncContext* priv_data; } ;
struct TYPE_23__ {unsigned int BufferType; int DataSize; unsigned int NumMBsInBuffer; unsigned int CompressedBufferType; } ;
struct TYPE_22__ {unsigned int dwSliceDataLocation; int dwSliceBitsInBuffer; scalar_t__ wNumberMBsInSlice; } ;
struct TYPE_21__ {struct dxva2_picture_context* hwaccel_picture_private; } ;
struct TYPE_20__ {int decoder; int video_context; } ;
struct TYPE_19__ {int decoder; } ;
typedef TYPE_2__ DXVA_SliceInfo ;
typedef TYPE_3__ DXVA2_DecodeBufferDesc ;
typedef TYPE_3__ DECODER_BUFFER_DESC ;
typedef TYPE_3__ D3D11_VIDEO_DECODER_BUFFER_DESC ;
typedef int AVDXVAContext ;
typedef TYPE_6__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_18__* D3D11VA_CONTEXT (int *) ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_BITSTREAM ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL ;
 unsigned int DXVA2_BitStreamDateBufferType ;
 TYPE_17__* DXVA2_CONTEXT (int *) ;
 unsigned int DXVA2_SliceControlBufferType ;
 int * DXVA_CONTEXT (TYPE_6__*) ;
 scalar_t__ FAILED (int ) ;
 int ID3D11VideoContext_GetDecoderBuffer (int ,int ,unsigned int,unsigned int*,void**) ;
 int ID3D11VideoContext_ReleaseDecoderBuffer (int ,int ,unsigned int) ;
 int IDirectXVideoDecoder_GetBuffer (int ,unsigned int,void**,unsigned int*) ;
 int IDirectXVideoDecoder_ReleaseBuffer (int ,unsigned int) ;
 scalar_t__ PICT_FRAME ;
 int av_log (TYPE_6__*,int ,char*) ;
 int ff_dxva2_commit_buffer (TYPE_6__*,int *,TYPE_3__*,unsigned int,TYPE_2__*,int,unsigned int const) ;
 scalar_t__ ff_dxva2_is_d3d11 (TYPE_6__*) ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int commit_bitstream_and_slice_buffer(AVCodecContext *avctx,
                                             DECODER_BUFFER_DESC *bs,
                                             DECODER_BUFFER_DESC *sc)
{
    const struct MpegEncContext *s = avctx->priv_data;
    AVDXVAContext *ctx = DXVA_CONTEXT(avctx);
    struct dxva2_picture_context *ctx_pic =
        s->current_picture_ptr->hwaccel_picture_private;
    const int is_field = s->picture_structure != PICT_FRAME;
    const unsigned mb_count = s->mb_width * (s->mb_height >> is_field);
    void *dxva_data_ptr;
    uint8_t *dxva_data, *current, *end;
    unsigned dxva_size;
    unsigned i;
    unsigned type;
    dxva_data = dxva_data_ptr;
    current = dxva_data;
    end = dxva_data + dxva_size;

    for (i = 0; i < ctx_pic->slice_count; i++) {
        DXVA_SliceInfo *slice = &ctx_pic->slice[i];
        unsigned position = slice->dwSliceDataLocation;
        unsigned size = slice->dwSliceBitsInBuffer / 8;
        if (size > end - current) {
            av_log(avctx, AV_LOG_ERROR, "Failed to build bitstream");
            break;
        }
        slice->dwSliceDataLocation = current - dxva_data;

        if (i < ctx_pic->slice_count - 1)
            slice->wNumberMBsInSlice =
                slice[1].wNumberMBsInSlice - slice[0].wNumberMBsInSlice;
        else
            slice->wNumberMBsInSlice =
                mb_count - slice[0].wNumberMBsInSlice;

        memcpy(current, &ctx_pic->bitstream[position], size);
        current += size;
    }
    if (i < ctx_pic->slice_count)
        return -1;
    return ff_dxva2_commit_buffer(avctx, ctx, sc,
                                  type,
                                  ctx_pic->slice,
                                  ctx_pic->slice_count * sizeof(*ctx_pic->slice),
                                  mb_count);
}
