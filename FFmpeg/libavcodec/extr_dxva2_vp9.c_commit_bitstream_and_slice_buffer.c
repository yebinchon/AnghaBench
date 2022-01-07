
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_20__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;
typedef struct TYPE_21__ TYPE_13__ ;


struct TYPE_25__ {unsigned int BufferType; unsigned int DataSize; unsigned int CompressedBufferType; scalar_t__ NumMBsInBuffer; } ;
typedef TYPE_2__ uint8_t ;
struct TYPE_21__ {unsigned int SliceBytesInBuffer; } ;
struct vp9_dxva2_picture_context {TYPE_13__ slice; int bitstream; } ;
struct TYPE_26__ {TYPE_1__* frames; } ;
typedef TYPE_3__ VP9SharedContext ;
struct TYPE_27__ {scalar_t__ pix_fmt; TYPE_3__* priv_data; } ;
struct TYPE_24__ {int decoder; int video_context; } ;
struct TYPE_23__ {struct vp9_dxva2_picture_context* hwaccel_picture_private; } ;
struct TYPE_22__ {int decoder; } ;
typedef TYPE_2__ DXVA2_DecodeBufferDesc ;
typedef TYPE_2__ DECODER_BUFFER_DESC ;
typedef TYPE_2__ D3D11_VIDEO_DECODER_BUFFER_DESC ;
typedef int AVDXVAContext ;
typedef TYPE_7__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 size_t CUR_FRAME ;
 TYPE_20__* D3D11VA_CONTEXT (int *) ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_BITSTREAM ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL ;
 unsigned int DXVA2_BitStreamDateBufferType ;
 TYPE_19__* DXVA2_CONTEXT (int *) ;
 unsigned int DXVA2_SliceControlBufferType ;
 int * DXVA_CONTEXT (TYPE_7__*) ;
 scalar_t__ FAILED (int ) ;
 unsigned int FFMIN (int,unsigned int) ;
 int ID3D11VideoContext_GetDecoderBuffer (int ,int ,unsigned int,unsigned int*,void**) ;
 int ID3D11VideoContext_ReleaseDecoderBuffer (int ,int ,unsigned int) ;
 int IDirectXVideoDecoder_GetBuffer (int ,unsigned int,void**,unsigned int*) ;
 int IDirectXVideoDecoder_ReleaseBuffer (int ,unsigned int) ;
 int av_log (TYPE_7__*,int ,char*) ;
 int ff_dxva2_commit_buffer (TYPE_7__*,int *,TYPE_2__*,unsigned int,TYPE_13__*,int,int ) ;
 scalar_t__ ff_dxva2_is_d3d11 (TYPE_7__*) ;
 int memcpy (TYPE_2__*,int ,unsigned int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int commit_bitstream_and_slice_buffer(AVCodecContext *avctx,
                                             DECODER_BUFFER_DESC *bs,
                                             DECODER_BUFFER_DESC *sc)
{
    const VP9SharedContext *h = avctx->priv_data;
    AVDXVAContext *ctx = DXVA_CONTEXT(avctx);
    struct vp9_dxva2_picture_context *ctx_pic = h->frames[CUR_FRAME].hwaccel_picture_private;
    void *dxva_data_ptr;
    uint8_t *dxva_data;
    unsigned dxva_size;
    unsigned padding;
    unsigned type;
    dxva_data = dxva_data_ptr;

    if (ctx_pic->slice.SliceBytesInBuffer > dxva_size) {
        av_log(avctx, AV_LOG_ERROR, "Failed to build bitstream");
        return -1;
    }

    memcpy(dxva_data, ctx_pic->bitstream, ctx_pic->slice.SliceBytesInBuffer);

    padding = FFMIN(128 - ((ctx_pic->slice.SliceBytesInBuffer) & 127), dxva_size - ctx_pic->slice.SliceBytesInBuffer);
    if (padding > 0) {
        memset(dxva_data + ctx_pic->slice.SliceBytesInBuffer, 0, padding);
        ctx_pic->slice.SliceBytesInBuffer += padding;
    }
    return ff_dxva2_commit_buffer(avctx, ctx, sc,
                                  type,
                                  &ctx_pic->slice, sizeof(ctx_pic->slice), 0);
}
