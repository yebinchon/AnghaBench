
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ pix_fmt; } ;
struct TYPE_14__ {unsigned int BufferType; unsigned int DataSize; unsigned int NumMBsInBuffer; unsigned int CompressedBufferType; } ;
struct TYPE_13__ {int decoder; int video_context; } ;
struct TYPE_12__ {int decoder; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DXVA2_DecodeBufferDesc ;
typedef TYPE_1__ DECODER_BUFFER_DESC ;
typedef TYPE_1__ D3D11_VIDEO_DECODER_BUFFER_DESC ;
typedef int AVDXVAContext ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_11__* D3D11VA_CONTEXT (int *) ;
 TYPE_10__* DXVA2_CONTEXT (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ ID3D11VideoContext_GetDecoderBuffer (int ,int ,unsigned int,unsigned int*,void**) ;
 scalar_t__ ID3D11VideoContext_ReleaseDecoderBuffer (int ,int ,unsigned int) ;
 scalar_t__ IDirectXVideoDecoder_GetBuffer (int ,unsigned int,void**,unsigned int*) ;
 scalar_t__ IDirectXVideoDecoder_ReleaseBuffer (int ,unsigned int) ;
 int av_log (TYPE_4__*,int ,char*,unsigned int,...) ;
 scalar_t__ ff_dxva2_is_d3d11 (TYPE_4__*) ;
 int memcpy (void*,void const*,unsigned int) ;
 int memset (TYPE_1__*,int ,int) ;

int ff_dxva2_commit_buffer(AVCodecContext *avctx,
                           AVDXVAContext *ctx,
                           DECODER_BUFFER_DESC *dsc,
                           unsigned type, const void *data, unsigned size,
                           unsigned mb_count)
{
    void *dxva_data;
    unsigned dxva_size;
    int result;
    HRESULT hr = 0;
    if (FAILED(hr)) {
        av_log(avctx, AV_LOG_ERROR, "Failed to get a buffer for %u: 0x%x\n",
               type, (unsigned)hr);
        return -1;
    }
    if (size <= dxva_size) {
        memcpy(dxva_data, data, size);
        result = 0;
    } else {
        av_log(avctx, AV_LOG_ERROR, "Buffer for type %u was too small\n", type);
        result = -1;
    }
    if (FAILED(hr)) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to release buffer type %u: 0x%x\n",
               type, (unsigned)hr);
        result = -1;
    }
    return result;
}
