
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint8_t ;
struct hevc_dxva2_picture_context {unsigned int slice_count; int const* bitstream; TYPE_3__* slice_short; } ;
typedef int start_code ;
struct TYPE_17__ {scalar_t__ pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_16__ {unsigned int BSNALunitDataLocation; unsigned int SliceBytesInBuffer; } ;
struct TYPE_15__ {TYPE_1__* ref; } ;
struct TYPE_14__ {struct hevc_dxva2_picture_context* hwaccel_picture_private; } ;
struct TYPE_13__ {int decoder; int video_context; } ;
struct TYPE_12__ {int decoder; } ;
typedef TYPE_1__ HEVCFrame ;
typedef TYPE_2__ HEVCContext ;
typedef TYPE_3__ DXVA_Slice_HEVC_Short ;
typedef int DXVA2_DecodeBufferDesc ;
typedef int DECODER_BUFFER_DESC ;
typedef int D3D11_VIDEO_DECODER_BUFFER_DESC ;
typedef int AVDXVAContext ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_11__* D3D11VA_CONTEXT (int *) ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_BITSTREAM ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL ;
 unsigned int DXVA2_BitStreamDateBufferType ;
 TYPE_10__* DXVA2_CONTEXT (int *) ;
 unsigned int DXVA2_SliceControlBufferType ;
 int * DXVA_CONTEXT (TYPE_4__*) ;
 scalar_t__ FAILED (int ) ;
 unsigned int FFMIN (int,int) ;
 int ID3D11VideoContext_GetDecoderBuffer (int ,int ,unsigned int,unsigned int*,void**) ;
 int ID3D11VideoContext_ReleaseDecoderBuffer (int ,int ,unsigned int) ;
 int IDirectXVideoDecoder_GetBuffer (int ,unsigned int,void**,unsigned int*) ;
 int IDirectXVideoDecoder_ReleaseBuffer (int ,unsigned int) ;
 int av_assert0 (int) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_dxva2_commit_buffer (TYPE_4__*,int *,int*,unsigned int,void*,unsigned int,int ) ;
 scalar_t__ ff_dxva2_is_d3d11 (TYPE_4__*) ;
 int memcpy (int*,int const*,unsigned int const) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int commit_bitstream_and_slice_buffer(AVCodecContext *avctx,
                                             DECODER_BUFFER_DESC *bs,
                                             DECODER_BUFFER_DESC *sc)
{
    const HEVCContext *h = avctx->priv_data;
    AVDXVAContext *ctx = DXVA_CONTEXT(avctx);
    const HEVCFrame *current_picture = h->ref;
    struct hevc_dxva2_picture_context *ctx_pic = current_picture->hwaccel_picture_private;
    DXVA_Slice_HEVC_Short *slice = ((void*)0);
    void *dxva_data_ptr;
    uint8_t *dxva_data, *current, *end;
    unsigned dxva_size;
    void *slice_data;
    unsigned slice_size;
    unsigned padding;
    unsigned i;
    unsigned type;
    dxva_data = dxva_data_ptr;
    current = dxva_data;
    end = dxva_data + dxva_size;

    for (i = 0; i < ctx_pic->slice_count; i++) {
        static const uint8_t start_code[] = { 0, 0, 1 };
        static const unsigned start_code_size = sizeof(start_code);
        unsigned position, size;

        slice = &ctx_pic->slice_short[i];

        position = slice->BSNALunitDataLocation;
        size = slice->SliceBytesInBuffer;
        if (start_code_size + size > end - current) {
            av_log(avctx, AV_LOG_ERROR, "Failed to build bitstream");
            break;
        }

        slice->BSNALunitDataLocation = current - dxva_data;
        slice->SliceBytesInBuffer = start_code_size + size;

        memcpy(current, start_code, start_code_size);
        current += start_code_size;

        memcpy(current, &ctx_pic->bitstream[position], size);
        current += size;
    }
    padding = FFMIN(128 - ((current - dxva_data) & 127), end - current);
    if (slice && padding > 0) {
        memset(current, 0, padding);
        current += padding;

        slice->SliceBytesInBuffer += padding;
    }
    if (i < ctx_pic->slice_count)
        return -1;
    slice_data = ctx_pic->slice_short;
    slice_size = ctx_pic->slice_count * sizeof(*ctx_pic->slice_short);

    av_assert0(((current - dxva_data) & 127) == 0);
    return ff_dxva2_commit_buffer(avctx, ctx, sc,
                                  type,
                                  slice_data, slice_size, 0);
}
