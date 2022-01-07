
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int uint8_t ;
struct dxva2_picture_context {unsigned int slice_count; int const* bitstream; TYPE_4__* slice; } ;
typedef int start_code ;
struct TYPE_18__ {unsigned int mb_width; unsigned int mb_height; TYPE_1__* current_picture_ptr; } ;
struct TYPE_17__ {unsigned int field_mode; scalar_t__ second_field; TYPE_3__ s; } ;
typedef TYPE_2__ VC1Context ;
struct TYPE_20__ {scalar_t__ codec_id; scalar_t__ pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_19__ {unsigned int dwSliceDataLocation; int dwSliceBitsInBuffer; scalar_t__ wNumberMBsInSlice; } ;
struct TYPE_16__ {struct dxva2_picture_context* hwaccel_picture_private; } ;
struct TYPE_15__ {int decoder; int video_context; } ;
struct TYPE_14__ {int decoder; } ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ DXVA_SliceInfo ;
typedef int DXVA2_DecodeBufferDesc ;
typedef int DECODER_BUFFER_DESC ;
typedef int D3D11_VIDEO_DECODER_BUFFER_DESC ;
typedef int AVDXVAContext ;
typedef TYPE_5__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_VC1 ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_13__* D3D11VA_CONTEXT (int *) ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_BITSTREAM ;
 unsigned int D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL ;
 unsigned int DXVA2_BitStreamDateBufferType ;
 TYPE_12__* DXVA2_CONTEXT (int *) ;
 unsigned int DXVA2_SliceControlBufferType ;
 int * DXVA_CONTEXT (TYPE_5__*) ;
 scalar_t__ FAILED (int ) ;
 unsigned int FFMIN (int,int) ;
 int ID3D11VideoContext_GetDecoderBuffer (int ,int ,unsigned int,unsigned int*,void**) ;
 int ID3D11VideoContext_ReleaseDecoderBuffer (int ,int ,unsigned int) ;
 int IDirectXVideoDecoder_GetBuffer (int ,unsigned int,void**,unsigned int*) ;
 int IDirectXVideoDecoder_ReleaseBuffer (int ,unsigned int) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int ff_dxva2_commit_buffer (TYPE_5__*,int *,int*,unsigned int,TYPE_4__*,int,unsigned int const) ;
 scalar_t__ ff_dxva2_is_d3d11 (TYPE_5__*) ;
 int memcpy (int*,int const*,unsigned int const) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int commit_bitstream_and_slice_buffer(AVCodecContext *avctx,
                                             DECODER_BUFFER_DESC *bs,
                                             DECODER_BUFFER_DESC *sc)
{
    const VC1Context *v = avctx->priv_data;
    AVDXVAContext *ctx = DXVA_CONTEXT(avctx);
    const MpegEncContext *s = &v->s;
    struct dxva2_picture_context *ctx_pic = s->current_picture_ptr->hwaccel_picture_private;

    static const uint8_t start_code[] = { 0, 0, 1, 0x0d };
    const unsigned start_code_size = avctx->codec_id == AV_CODEC_ID_VC1 ? sizeof(start_code) : 0;
    const unsigned mb_count = s->mb_width * (s->mb_height >> v->field_mode);
    DXVA_SliceInfo *slice = ((void*)0);
    void *dxva_data_ptr;
    uint8_t *dxva_data, *current, *end;
    unsigned dxva_size;
    unsigned padding;
    unsigned i;
    unsigned type;
    dxva_data = dxva_data_ptr;
    current = dxva_data;
    end = dxva_data + dxva_size;

    for (i = 0; i < ctx_pic->slice_count; i++) {
        unsigned position, size;
        slice = &ctx_pic->slice[i];
        position = slice->dwSliceDataLocation;
        size = slice->dwSliceBitsInBuffer / 8;
        if (start_code_size + size > end - current) {
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


        if (start_code_size) {
            memcpy(current, start_code, start_code_size);
            if (i == 0 && v->second_field)
                current[3] = 0x0c;
            else if (i > 0)
                current[3] = 0x0b;

            current += start_code_size;
            slice->dwSliceBitsInBuffer += start_code_size * 8;
        }

        memcpy(current, &ctx_pic->bitstream[position], size);
        current += size;
    }
    padding = FFMIN(128 - ((current - dxva_data) & 127), end - current);
    if (slice && padding > 0) {
        memset(current, 0, padding);
        current += padding;
        slice->dwSliceBitsInBuffer += padding * 8;
    }
    if (i < ctx_pic->slice_count)
        return -1;
    return ff_dxva2_commit_buffer(avctx, ctx, sc,
                                  type,
                                  ctx_pic->slice,
                                  ctx_pic->slice_count * sizeof(*ctx_pic->slice),
                                  mb_count);
}
